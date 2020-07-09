# $OpenBSD: Makefile.inc,v 1.160 2020/07/09 13:54:01 landry Exp $

# Unversioned distfiles
PORTROACH =	ignore:1

# keep in sync with working archs.. sigh
ONLY_FOR_ARCHS =	amd64 i386 aarch64

PKG_ARCH =	*

FV =		78.0.2
V =		${FV:C/b.$//}
NAME =		firefox-i18n

CATEGORIES =	www

HOMEPAGE =	https://wiki.mozilla.org/L10n:Home_Page

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/${FV}/linux-i686/xpi/ \
		http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${FV}/linux-i686/xpi/

LANGUAGES =	ach af an ar ast az bg bn br bs ca cs cy da de dsb el en-GB en-US eo \
		es-AR es-CL es-ES es-MX et eu fa ff fi fr fy-NL ga-IE gd gl gu-IN he \
		hi-IN hr hsb hu hy-AM id \
		is it ja kk km kn ko lij lt lv mk mr ms nb-NO nl nn-NO \
		pa-IN pl pt-BR pt-PT rm ro ru si sk sl son sq sr sv-SE \
		ta te th tr uk vi xh zh-CN zh-TW

BUILD_DEPENDS =	archivers/unzip
RUN_DEPENDS =	firefox-${FV:S/b/beta/}:www/mozilla-firefox

DIST_SUBDIR =	mozilla/${NAME}-${FV}
NO_BUILD =	Yes
NO_TEST =	Yes
EXTRACT_ONLY =

.for i in ${LANGUAGES}
SUPDISTFILES +=	$i.xpi
.endfor

PKGNAME =	${NAME}-$L-${FV:S/b/beta/}
COMMENT =	$L language pack for Firefox
DISTFILES =	$L.xpi

# use the same for all subpackages
PKGDIR =	${.CURDIR}/../pkg
PLIST =		${PKGDIR}/PLIST
DESCR =		${PKGDIR}/DESCR
CHECKSUM_FILE =	${.CURDIR}/../distinfo
MESSAGE=	${PKGDIR}/MESSAGE
SUBST_VARS =	V L

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/firefox/distribution/extensions
	${INSTALL_DATA} ${FULLDISTDIR}/$L.xpi ${PREFIX}/lib/firefox/distribution/extensions/langpack-$L@firefox.mozilla.org.xpi
