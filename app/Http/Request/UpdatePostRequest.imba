import { Post } from '../../Models/Post'
import { FormRequest } from '@formidablejs/framework'

export class UpdatePostRequest < FormRequest

	def authorize
		true

	def rules
		{
			title: 'required|min:4'
			content: 'required|min:4'
		}

	def update
		new Post({ id: self.param('id') }).set({
			title: self.input('title')
			content: self.input('content')
		}).save!
