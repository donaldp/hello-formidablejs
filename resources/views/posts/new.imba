import { CsrfComponent } from '../../components/CsrfComponent'
import { ErrorComponnet } from '../../components/ErrorComponent'
import { InputComponent } from '../../components/InputComponent'
import { InputGroupComponent } from '../../components/InputGroupComponent'
import { LabelComponent } from '../../components/LabelComponent'
import { SubmitComponent } from '../../components/SubmitComponent'
import { TextAreaComponent } from '../../components/TextAreaComponent'
import { URL } from '@formidablejs/framework'
import { View } from '@formidablejs/framework'

export class NewPost < View

	def render
		<html lang="{ get('locale') }">
			<head>
				<meta charset='utf-8'>
				<meta name='viewport' content='width=device-width,initial-scale=1'>
				<title> "New Post"

				<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap'>
				<style src="./new">

			<body[m:4 ff:Nunito]>
				<h1> "New Post"

				<form action=URL.route('posts.store') method="POST">
					<CsrfComponent component=self>

					<InputGroupComponent>
						<LabelComponent> "Title"
						<InputComponent component=self name="title">
						<ErrorComponnet component=self name="title">

					<InputGroupComponent>
						<LabelComponent> "Content"
						<TextAreaComponent component=self name="content">
						<ErrorComponnet component=self name="content">

					<InputGroupComponent>
						<SubmitComponent> "Create Post"

				<a href=URL.route('posts.all')> "Back to posts"
