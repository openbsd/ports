# $OpenBSD: Makefile.inc,v 1.32 2014/04/29 21:26:43 landry Exp $

# keep in sync with working archs.. sigh
ONLY_FOR_ARCHS =	amd64 i386 powerpc sparc64

PKG_ARCH =	*

FV =		29.0
V =		${FV:C/b.$//}
NAME =		firefox-i18n

CATEGORIES =	www

HOMEPAGE =	https://wiki.mozilla.org/L10n:Home_Page

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/${FV}/linux-i686/xpi/ \
		http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${FV}/linux-i686/xpi/ \
		ftp://ftp.mozilla.org/pub/mozilla.org/firefox/releases/${FV}/linux-i686/xpi/

LANGUAGES =	af ar ast be bg bn-BD bn-IN br bs ca cs cy da de el en-GB en-US en-ZA eo \
		es-AR es-CL es-ES es-MX et eu fa fi fr fy-NL ga-IE gd gl gu-IN he \
		hi-IN hr hu hy-AM id \
		is it ja kk kn ko ku lt lv mai mk ml mr nb-NO nl nn-NO \
		or pa-IN pl pt-BR pt-PT rm ro ru si sk sl son sq sr sv-SE \
		ta te th tr uk vi zh-CN zh-TW zu

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
	${INSTALL_DATA_DIR} ${PREFIX}/lib/firefox-$V/browser/extensions
	${INSTALL_DATA} ${FULLDISTDIR}/$L.xpi ${PREFIX}/lib/firefox-$V/browser/extensions/langpack-$L@firefox.mozilla.org.xpi
