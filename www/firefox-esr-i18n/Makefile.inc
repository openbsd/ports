# $OpenBSD: Makefile.inc,v 1.35 2016/08/02 17:43:30 landry Exp $

# Unversioned distfiles
PORTROACH =	ignore:1

# keep in sync with working archs.. sigh
ONLY_FOR_ARCHS =	amd64 i386

PKG_ARCH =	*

FV =		45.3.0
V =		${FV:C/b.$//}
NAME =		firefox-esr-i18n

CATEGORIES =	www

HOMEPAGE =	https://wiki.mozilla.org/L10n:Home_Page

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/${FV}esr/linux-i686/xpi/ \
		http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${FV}esr/linux-i686/xpi/

LANGUAGES =	ach af an ar as ast az be bg bn-BD bn-IN br bs ca cs cy da de dsb el en-GB en-US en-ZA eo \
		es-AR es-CL es-ES es-MX et eu fa ff fi fr fy-NL ga-IE gd gl gn gu-IN he \
		hi-IN hr hsb hu hy-AM id \
		is it ja kk km kn ko lij lt lv mai mk ml mr ms nb-NO nl nn-NO \
		or pa-IN pl pt-BR pt-PT rm ro ru si sk sl son sq sr sv-SE \
		ta te th tr uk uz vi xh zh-CN zh-TW

BUILD_DEPENDS =	archivers/unzip
RUN_DEPENDS =	firefox-esr-${FV:S/b/beta/}:www/firefox-esr

DIST_SUBDIR =	mozilla/${NAME}-esr-${FV}
NO_BUILD =	Yes
NO_TEST =	Yes
EXTRACT_ONLY =

.for i in ${LANGUAGES}
SUPDISTFILES +=	$i.xpi
.endfor

PKGNAME =	${NAME}-$L-${FV:S/b/beta/}
COMMENT =	$L language pack for Firefox ESR
DISTFILES =	$L.xpi

# use the same for all subpackages
PKGDIR =	${.CURDIR}/../pkg
PLIST =		${PKGDIR}/PLIST
DESCR =		${PKGDIR}/DESCR
CHECKSUM_FILE =	${.CURDIR}/../distinfo
MESSAGE=	${PKGDIR}/MESSAGE
SUBST_VARS =	V L

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/firefox-esr-$V/browser/extensions
	${INSTALL_DATA} ${FULLDISTDIR}/$L.xpi ${PREFIX}/lib/firefox-esr-$V/browser/extensions/langpack-$L@firefox.mozilla.org.xpi
