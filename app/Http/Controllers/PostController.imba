import { DeletePostRequest } from '../Request/DeletePostRequest'
import { UpdatePostRequest } from '../Request/UpdatePostRequest'
import { EditPost } from '../../../resources/views/posts/edit'
import { ShowPost } from '../../../resources/views/posts/show'
import { Post } from '../../Models/Post'
import { @use } from '@formidablejs/framework'
import { AllPosts } from '../../../resources/views/posts/all'
import { Controller } from './Controller'
import { NewPost } from '../../../resources/views/posts/new'
import { Redirect } from '@formidablejs/framework'
import { Request } from '@formidablejs/framework'
import { StorePostRequest } from '../Request/StorePostRequest'

export class PostController < Controller

	def index
		const posts = await Post.forge!
			.orderBy('created_at', 'DESC')
			.fetchAll!

		view AllPosts, {
			posts: posts.toArray!
		}

	def create
		view NewPost

	@use(StorePostRequest)
	def store request\StorePostRequest
		const post\Post = await request.create!

		Redirect.route('posts.show', { id: post.id })
			.with(
				'success',
				'Successfully created a post'
			)

	@use(Post)
	def show post\Post
		const { attributes } = await post.catch do
			notFound 'Post does not exist'

		view ShowPost, {
			post: attributes
		}

	@use(Post)
	def edit post\Post
		const { attributes } = await post

		view EditPost, {
			post: attributes
		}

	@use(UpdatePostRequest)
	def update request\UpdatePostRequest
		request.update!

		Redirect.back!
			.with(
				'success',
				'Successfully update post'
			)

	@use(DeletePostRequest)
	def remove request\DeletePostRequest
		request.remove!

		Redirect.route('posts.all')
			.with(
				'success',
				'Successfully deleted post'
			)
