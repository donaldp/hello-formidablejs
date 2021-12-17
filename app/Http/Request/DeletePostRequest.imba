import { Post } from '../../Models/Post'
import { FormRequest } from '@formidablejs/framework'

export class DeletePostRequest < FormRequest

	def authorize
		true

	def rules
		{
			id: 'required|numeric'
		}

	def remove
		new Post({ id: self.input('id') })
			.destroy!
