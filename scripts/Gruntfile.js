'use strict';

module.exports = function(grunt) {
	require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

	grunt.initConfig({
		// define default paths in project
		path: {
			app: 'src',
			sass: 'src/sass',
			css: 'src/css',
			js: 'src/javascripts',
			images: 'src/images',
			fonts: 'src/fonts'
		},

		// optimization of images file
		imagemin: {
			dynamic: {
				files: [{
					expand: true,
					cwd: '<%= path.images %>',
					src: ['**/*.{png,jpg,gif}'],
					dest: '<%= path.images %>'
				}]
			}
		},

		// compass options to output
		compass: {
			dev: {
				options: {
					httpPath: '<%= path.app %>',
					cssDir: '<%= path.css %>',
					sassDir: '<%= path.sass %>',
					javascriptsDir: '<%= path.js %>',
					imagesDir: '<%= path.images %>',
					fontsDir: '<%= path.fonts %>',
					generatedImagesDir: '<%= path.images %>/sprites/',
					outputStyle: 'expanded',
					relativeAssets: true
				}
			}
		},

		// concatenate scripts
		concat: {
			dist: {
				options: { separator: ";\n" },
				files: {
					'': []
				}
			}
		},

		// minification the javascripts scripts
		uglify: {
			dist: {
				files: {
					'<%= path.js %>/main.js': ['<%= path.js %>/main.js']
				}
			}
		},

		// hint the javascripts scripts
		jshint: {
			options: {
				jshintrc: '.jshintrc',
				force: true
			},
			all: [
				'Gruntfile.js',
				'<%= path.js %>/app.js',
				'<%= path.js %>/app/**/*.js'
			]
		},

		// start a nodejs server
		connect: {
			server: {
				options: {
					port: 9000,
					base: '<%= path.app %>',
					livereload: true
				}
			}
		},

		// watch triger and classes
		watch: {
			options: {
				livereload: true
			},
			html: {
				files: ['<%= path.app %>/**/*.html']
			},
			compass: {
				files: ['<%= path.sass %>/**/*.{scss,sass}'],
				tasks: ['compass']
			},
			css: {
				files: ['<%= path.css %>/*.css']
			},
			js: {
				files: '<%= jshint.all %>',
				tasks: ['jshint']
			}
		}
	});

	// grunt tasks
	grunt.registerTask('server', ['connect:server', 'watch']);
	grunt.registerTask('jsmin', ['jshint', 'concat:dist', 'uglify:dist']);
};
