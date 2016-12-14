var gulp = require('gulp');
var svgSprite = require("gulp-svg-sprites");
var util = require('gulp-util');

var dist = util.env.dest + '/' + util.env.iconset + '/sprite';

gulp.task('sprites', function () {
    return gulp.src('**/' + util.env.iconset + '/*.svg')
        .pipe(svgSprite({
            preview: false,
            mode: "sprite",
            svgId: "icon-%f"
        }))
        .pipe(gulp.dest(dist));
});

gulp.task('default', ['sprites']);
