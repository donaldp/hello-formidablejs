import { PostComponent } from '../../components/PostComponent'
import { View } from '@formidablejs/framework'

export class ShowPost < View

	def render
		<html lang="{ get('locale') }">
			<head>
				<meta charset='utf-8'>
				<meta name='viewport' content='width=device-width,initial-scale=1'>
				<title> "New Post"

				<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap'>
				<style src="./show">

			<body[m:4 ff:Nunito]>
				<h1> "Post"

				<PostComponent
					edit
					csrf_token=get('csrf_token')
					id=get('post').id
					title=get('post').title
					content=get('post').content
				>
