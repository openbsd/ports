# $OpenBSD: Makefile.inc,v 1.32 2014/09/09 21:27:38 landry Exp $

# keep in sync with working archs.. sigh
ONLY_FOR_ARCHS =	amd64 i386 powerpc sparc64

PKG_ARCH =	*

FV =		2.29
V =		${FV:C/b.$//}
NAME =		seamonkey-i18n

CATEGORIES =	www

HOMEPAGE =	https://wiki.mozilla.org/L10n:Home_Page

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://ftp.mozilla.org/pub/mozilla.org/seamonkey/releases/${FV}/langpack/ \
		http://releases.mozilla.org/pub/mozilla.org/seamonkey/releases/${FV}/langpack/ \
		ftp://ftp.mozilla.org/pub/mozilla.org/seamonkey/releases/${FV}/langpack/

BUILD_DEPENDS =	archivers/unzip
RUN_DEPENDS =	seamonkey-${FV:S/b/beta/}:www/seamonkey

DIST_SUBDIR =	mozilla/${NAME}-${FV}
NO_BUILD =	Yes
NO_TEST =	Yes
EXTRACT_ONLY =

# needed to have all distfiles in distinfo
LANGUAGES =	be ca de en-GB en-US es-AR es-ES fi fr gl hu it ja \
		ja-JP-mac lt nb-NO nl pl pt-PT ru sk sv-SE tr zh-CN

.for i in ${LANGUAGES}
SUPDISTFILES +=	seamonkey-${FV}.$i.langpack.xpi
.endfor

PKGNAME =	${NAME}-$L-${FV:S/b/beta/}
COMMENT =	$L language pack for Seamonkey
DISTFILES =	seamonkey-${FV}.$L.langpack.xpi

# use the same for all subpackages
PKGDIR =	${.CURDIR}/../pkg
PLIST =		${PKGDIR}/PLIST
DESCR =		${PKGDIR}/DESCR
CHECKSUM_FILE =	${.CURDIR}/../distinfo
SUBST_VARS =	V L

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/seamonkey-$V/extensions
	${INSTALL_DATA} ${FULLDISTDIR}/seamonkey-${FV}.$L.langpack.xpi \
		${PREFIX}/lib/seamonkey-$V/extensions/langpack-$L@seamonkey.mozilla.org.xpi
