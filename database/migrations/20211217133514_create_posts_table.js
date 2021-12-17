exports.up = (knex) => {
	return knex.schema.createTable('posts', (table) => {
		table.increments('id').primary();
		table.text('title');
		table.text('content');
		table.timestamps(true, true);
	});
};

exports.down = (knex) => knex.schema.dropTable('posts');
