#!/bin/sh
# little tool to grab all js-dependencies and generate a bower_components/
# directory suitable for tryton-sao

PATH='/usr/bin:/bin:/usr/sbin:/sbin'
set -eu

FETCHCMD='ftp'
UNZIP='/usr/local/bin/7z x'

TRYTON_VERSION='5.2'

umask 022

if [ $# -ne 0 ]; then
	echo "usage: $0" >&2
	exit 1
fi

OUTDIR="${PWD}/sao-dependencies-${TRYTON_VERSION}"

if [ -d "${OUTDIR}" ]; then
	echo "error: output directory already exists: ${OUTDIR}" >&2
	exit 1
fi

EXTRACTDIR=$(mktemp -dt sao-dependencies.XXXXXXXX) || {
	echo "error: unable to create temporary directory" >&2
	exit 1
}

# https://getbootstrap.com/docs/3.3/getting-started/#download
bootstrap() {
	local V="$1"
	local U="https://github.com/twbs/bootstrap/releases/download/v${V}/bootstrap-${V}-dist.zip"
	local O="${OUTDIR}/bower_components/bootstrap/dist"

	${FETCHCMD} -o "${EXTRACTDIR}/bootstrap-${V}-dist.zip" -- "${U}"
	( cd "${EXTRACTDIR}" && ${UNZIP} "bootstrap-${V}-dist.zip" )
	rm "${EXTRACTDIR}/bootstrap-${V}-dist.zip"

	mkdir -p -- "${O}"
	cp -R "${EXTRACTDIR}/bootstrap-${V}-dist"/{css,fonts,js} "${O}"
	rm -rf "${EXTRACTDIR}/bootstrap-${V}-dist"
}

# https://github.com/Eonasdan/bootstrap-datetimepicker/releases
bootstrap_datetimepicker() {
	local V="$1"
	local U="https://github.com/Eonasdan/bootstrap-datetimepicker/archive/${V}.tar.gz"
	local O="${OUTDIR}/bower_components/eonasdan-bootstrap-datetimepicker"

	${FETCHCMD} -o- -- "${U}" | tar zxf - -C "${EXTRACTDIR}"

	mkdir -p "${O}"
	cp -R "${EXTRACTDIR}/bootstrap-datetimepicker-${V}/build" "${O}"
	rm -rf "${EXTRACTDIR}/bootstrap-datetimepicker-${V}"
}

# https://github.com/bright/bootstrap-rtl/releases
bootstrap_rtl_ondemand() {
	local V="$1"
	local U="https://github.com/bright/bootstrap-rtl/archive/v${V}-ondemand.tar.gz"
	local O="${OUTDIR}/bower_components/bootstrap-rtl-ondemand"

	${FETCHCMD} -o- -- "${U}" | tar zxf - -C "${EXTRACTDIR}"

	mkdir -p "${O}"
	cp -R "${EXTRACTDIR}/bootstrap-rtl-${V}-ondemand/dist" "${O}"
	rm -rf "${EXTRACTDIR}/bootstrap-rtl-${V}-ondemand"
}

# https://github.com/c3js/c3/releases
c3() {
	local V="$1"
	local U="https://github.com/c3js/c3/archive/v${V}.tar.gz"
	local O="${OUTDIR}/bower_components/c3"

	${FETCHCMD} -o- -- "${U}" | tar zxf - -C "${EXTRACTDIR}"

	mkdir -p "${O}"
	cp -R "${EXTRACTDIR}/c3-${V}"/c3{.min,}.css \
		"${EXTRACTDIR}/c3-${V}"/c3{.min,}.js \
		"${EXTRACTDIR}/c3-${V}/extensions" \
		"${O}"
	rm "${O}/extensions/chart-bubble/c3.css" \
		"${O}/extensions/chart-bubble/c3.min.js"
	cp "${EXTRACTDIR}/c3-${V}/bower.json" "${O}"	# for dependencies
	rm -rf "${EXTRACTDIR}/c3-${V}"
}

# https://github.com/d3/d3/releases
d3() {
	local V="$1"
	local U="https://github.com/d3/d3/releases/download/v${V}/d3.zip"
	local O="${OUTDIR}/bower_components/d3"

	${FETCHCMD} -o "${EXTRACTDIR}/d3.zip" -- "${U}"
	mkdir "${EXTRACTDIR}/d3"
	( cd "${EXTRACTDIR}/d3" && ${UNZIP} "../d3.zip" )
	rm "${EXTRACTDIR}/d3.zip"

	mkdir -p -- "${O}"
	cp "${EXTRACTDIR}/d3/"d3{.min,}.js "${O}"
	rm -rf "${EXTRACTDIR}/d3"
}

# https://github.com/fullcalendar/fullcalendar/releases
fullcalendar() {
	local V="$1"
	local U="https://github.com/fullcalendar/fullcalendar/releases/download/v${V}/fullcalendar-${V}.zip"
	local O="${OUTDIR}/bower_components/fullcalendar/dist"

	${FETCHCMD} -o "${EXTRACTDIR}/fullcalendar-${V}.zip" -- "${U}"
	( cd "${EXTRACTDIR}" && ${UNZIP} "fullcalendar-${V}.zip" )
	rm "${EXTRACTDIR}/fullcalendar-${V}.zip"

	mkdir -p -- "${O}"
	cp -R "${EXTRACTDIR}/fullcalendar-${V}"/fullcalendar{,.min}.js \
		"${EXTRACTDIR}/fullcalendar-${V}"/fullcalendar{,.min}.css \
		"${EXTRACTDIR}/fullcalendar-${V}"/fullcalendar.print{,.min}.css \
		"${EXTRACTDIR}/fullcalendar-${V}"/gcal{.min,}.js \
		"${EXTRACTDIR}/fullcalendar-${V}"/locale{-all.js,} \
		"${O}"
	rm -rf "${EXTRACTDIR}/fullcalendar-${V}"
}

# https://github.com/guillaumepotier/gettext.js/releases
gettext_js() {
	local V="$1"
	local U="https://github.com/guillaumepotier/gettext.js/archive/${V}.tar.gz"
	local O="${OUTDIR}/bower_components/gettext.js"

	${FETCHCMD} -o- -- "${U}" | tar zxf - -C "${EXTRACTDIR}"

	mkdir -p -- "${O}"
	cp -R "${EXTRACTDIR}/gettext.js-${V}/dist" "${O}"
	rm -rf "${EXTRACTDIR}/gettext.js-${V}"
}

# https://jquery.com/download/
jquery() {
	local V="$1"
	local U="https://code.jquery.com"
	local O="${OUTDIR}/bower_components/jquery/dist"

	mkdir -p "${O}"
	${FETCHCMD} -o "${O}/jquery.js"		"${U}/jquery-${V}.js"
	${FETCHCMD} -o "${O}/jquery.min.js"	"${U}/jquery-${V}.min.js"
	${FETCHCMD} -o "${O}/jquery.min.map"	"${U}/jquery-${V}.min.map"
}

# https://github.com/moment/moment/releases
moment() {
	local V="$1"
	local U="https://github.com/moment/moment/archive/${V}.tar.gz"
	local O="${OUTDIR}/bower_components/moment"

	${FETCHCMD} -o- -- "${U}" | tar zxf - -C "${EXTRACTDIR}"

	mkdir -p -- "${O}"
	cp -R "${EXTRACTDIR}/moment-${V}/moment.js" \
		"${EXTRACTDIR}/moment-${V}/min" \
		"${O}"
	rm "${O}/min/tests.js"
	rm -rf "${EXTRACTDIR}/moment-${V}"
}

# https://github.com/ccampbell/mousetrap/releases
mousetrap() {
	local V="$1"
	local U="https://github.com/ccampbell/mousetrap/archive/${V}.tar.gz"
	local O="${OUTDIR}/bower_components/mousetrap"

	${FETCHCMD} -o- -- "${U}" | tar zxf - -C "${EXTRACTDIR}"

	mkdir -p -- "${O}"
	cp -R "${EXTRACTDIR}/mousetrap-${V}/"mousetrap{.min,}.js \
		"${EXTRACTDIR}/mousetrap-${V}/plugins" \
		"${O}"
	rm -rf "${EXTRACTDIR}/mousetrap-${V}"
}

# https://github.com/mholt/papaparse/releases
papaparse() {
	local V="$1"
	local U="https://github.com/mholt/papaparse/archive/${V}.tar.gz"
	local O="${OUTDIR}/bower_components/papaparse"

	${FETCHCMD} -o- -- "${U}" | tar zxf - -C "${EXTRACTDIR}"

	mkdir -p -- "${O}"
	cp "${EXTRACTDIR}/PapaParse-${V}/"papaparse{.min,}.js "${O}"
	rm -rf "${EXTRACTDIR}/PapaParse-${V}"
}

# download and extract files
bootstrap			'3.3.7'		# ^3.3.7
bootstrap_datetimepicker	'4.17.47'	# ^4.17
bootstrap_rtl_ondemand		'3.3.4'		# ^3.3.4-ondemand
c3				'0.7.7'		# ^0.6
d3				'5.11.0'	# ^5.0.0 (c3 dependency)
fullcalendar			'3.10.0'	# ^3.0
gettext_js			'0.5.5'		# ^0.5
jquery				'3.3.1'		# ^3
moment				'2.24.0'	# ^2.10
mousetrap			'1.6.3'		# ^1.6
papaparse			'4.6.3'		# ^4.1

# cleanup (ensure it is empty)
rmdir "${EXTRACTDIR}"

# generate sha256
( cd "${OUTDIR}" && find "bower_components" -type f -print0 \
	| xargs -0 sha256 -b ) \
	> "${OUTDIR}/SHA256"
