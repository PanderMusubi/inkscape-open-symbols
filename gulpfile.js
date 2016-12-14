var gulp = require('gulp');
var svgSymbols = require('gulp-svg-symbols');
var util = require('gulp-util');
var cheerio = require('gulp-cheerio');
var rename = require("gulp-rename");

if (util.env.dest && util.env.iconset ) {
    var dist = util.env.dest + '/' + util.env.iconset + '/sprite';
} else {
    var err = new Error( 'parameter "--iconset" and "--dest" folder required ');
    throw err;
}

gulp.task('sprites', function () {
  return gulp.src('**/' + util.env.iconset + '/*.svg')
    .pipe(cheerio({
        run: function ($) {
            $('[fill]').removeAttr('fill');
            $('[stroke]').removeAttr('stroke');
            $('[stroke-width]').removeAttr('stroke-width');
            $('[stroke-width]').removeAttr('stroke-width');
            $('[fill-rule]').removeAttr('fill-rule');
            $('[stroke-width]').removeAttr('stroke-width');
            $('[stroke-linecap]').removeAttr('stroke-linecap');
            $('[stroke-linejoin]').removeAttr('stroke-linejoin');
            $('[height]').removeAttr('height');
            $('[width]').removeAttr('width');
        },
        parserOptions: { xmlMode: true }
    }))
    .pipe(svgSymbols({
        title: '%f'
    }))
    // .pipe(rename(util.env.iconset + '-symbols.svg'))
    .pipe(gulp.dest(dist));
});

gulp.task('default', ['sprites']);
