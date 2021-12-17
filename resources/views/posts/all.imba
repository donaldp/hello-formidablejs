import { PostComponent } from '../../components/PostComponent'
import { URL } from '@formidablejs/framework'
import { View } from '@formidablejs/framework'

export class AllPosts < View

	def render
		<html lang="{ get('locale') }">
			<head>
				<meta charset='utf-8'>
				<meta name='viewport' content='width=device-width,initial-scale=1'>
				<title> "All Posts"

				<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap'>
				<style src="./all">

			<body[m:4 ff:Nunito]>
				<h1> "Posts"

				if hasSession('success')
					<p[c:green6]> session('success')

				for post in get('posts')
					<PostComponent
						show
						id=post.id
						title=post.attributes.title
						content=post.attributes.content
					>

				if get('posts').length == 0
					<p[c:gray5 fs:sm]> "No posts"

				<a href=URL.route('posts.create')> "Create post"
