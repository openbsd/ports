# $OpenBSD: Makefile.inc,v 1.65 2021/12/13 11:10:52 landry Exp $

# Unversioned distfiles
PORTROACH =	ignore:1

# keep in sync with working archs.. sigh
ONLY_FOR_ARCHS =	amd64 i386

PKG_ARCH =	*

FV =		2.53.10.1
V =		${FV:C/b.$//}
NAME =		seamonkey-i18n

CATEGORIES =	www

HOMEPAGE =	https://wiki.mozilla.org/L10n:Home_Page

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://ftp.mozilla.org/pub/mozilla.org/seamonkey/releases/${FV}/langpack/ \
		http://releases.mozilla.org/pub/mozilla.org/seamonkey/releases/${FV}/langpack/

BUILD_DEPENDS =	archivers/unzip
RUN_DEPENDS =	seamonkey-${FV:S/b/beta/}:www/seamonkey

DIST_SUBDIR =	mozilla/${NAME}-${FV}
NO_BUILD =	Yes
NO_TEST =	Yes
EXTRACT_ONLY =

# needed to have all distfiles in distinfo
LANGUAGES =	cs de en-GB en-US es-AR es-ES fr hu it ja \
		nb-NO nl pl pt-BR pt-PT ru sk sv-SE zh-CN zh-TW

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
	${INSTALL_DATA_DIR} ${PREFIX}/lib/seamonkey/distribution/extensions
	${INSTALL_DATA} ${FULLDISTDIR}/seamonkey-${FV}.$L.langpack.xpi \
		${PREFIX}/lib/seamonkey/distribution/extensions/langpack-$L@seamonkey.mozilla.org.xpi
