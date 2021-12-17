import { Post } from '../../Models/Post'
import { FormRequest } from '@formidablejs/framework'

export class StorePostRequest < FormRequest

	def authorize
		true

	def rules
		{
			title: 'required|min:4'
			content: 'required|min:4'
		}

	def create
		await new Post({
			title: self.input('title')
			content: self.input('content')
		}).save!
