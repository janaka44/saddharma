from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework import permissions
from core.models import Book, BookTemp
from .serializers import BookSerializer, BookTempSerializer


class BookListApiView(APIView):
    # add permission to check if user is authenticated
    # permission_classes = [permissions.IsAuthenticated]

    # 1. List all
    def get(self, request, catalog_no, *args, **kwargs):
        '''
        List all the todo items for given requested user
        '''
        data = self.get_object(catalog_no)
        if not data:
            return Response(
                {"res": "Book with catalog_no: {catalog_no} not found."},
                status=status.HTTP_400_BAD_REQUEST
            )
        serializer = BookSerializer(data, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    # 2. Create
    def post(self, request, *args, **kwargs):
        '''
        Create the Todo with given todo data
        '''
        data = {
            'task': request.data.get('task'),
            'completed': request.data.get('completed'),
            'user': request.user.id
        }
        serializer = BookSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def get_object(self, catalog_no):
        '''
        Helper method to get the object with given todo_id, and user_id
        '''
        try:
            return Book.objects.filter(catalog_no=catalog_no)
        except Book.DoesNotExist:
            return None


class BookTempListApiView(APIView):
    # add permission to check if user is authenticated
    # permission_classes = [permissions.IsAuthenticated]

    # 1. List all
    def list(self, request, *args, **kwargs):
        '''
        List all the todo items for given requested user
        '''
        #todos = BookTemp.objects.filter(user =
        data = BookTemp.objects.all()
        if not data:
            return Response(
                {"res": "Book with catalog_no does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        serializer = BookTempSerializer(data, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)


    def get(self, request, catalog_no, *args, **kwargs):
        '''
        List all the todo items for given requested user
        '''
        #todos = BookTemp.objects.filter(user =
        # data = BookTemp.objects.all()
        data = self.get_object(catalog_no)
        if not data:
            return Response(
                {"res": "Book with catalog_no does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        serializer = BookTempSerializer(data, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    # 2. Create
    def post(self, request,  *args, **kwargs):
        '''
        Create the Todo with given todo data
        '''
        data = {
            'task': request.data.get('task'),
            'completed': request.data.get('completed'),
            'user': request.user.id
        }
        serializer = BookTempSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


    def get_object(self, catalog_no):
        '''
        Helper method to get the object with given todo_id, and user_id
        '''
        try:
            return BookTemp.objects.filter(catalog_no=catalog_no)
        except BookTemp.DoesNotExist:
            return None


    def put(self, request, catalog_no, *args, **kwargs):
        '''
        Updates the todo item with given todo_id if exists
        '''
        data = self.get_object(catalog_no, request.user.id)
        if not data:
            return Response(
                {"res": "Book with catalog_no id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'task': request.data.get('task'),
            'completed': request.data.get('completed'),
            'user': request.user.id
        }
        serializer = BookTempSerializer(instance=data, data=data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
