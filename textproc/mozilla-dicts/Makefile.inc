# $OpenBSD: Makefile.inc,v 1.1 2013/06/22 09:31:48 espie Exp $

PKG_ARCH =	*
REVISION =	0

V =		1.3
NAME =		mozilla-dicts

CATEGORIES =	textproc

HOMEPAGE =	https://addons.mozilla.org/language-tools/

MAINTAINER =	Martynas Venckus <martynas@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://spacehopper.org/martynas/mozilla/dicts/${V}/

LANGUAGES =	af ak am-ET ar az-IR be bg bn-BD ca-valencia ca cs \
		csb cy-GB da de-AT de-CH de-DE dsb el en-AU en-CA \
		en-GB en-ZA eo es-AR es-MX es-VE es-es et eu fa \
		fo-FO fr fur-IT fy-NL ga-IE gl gu-IN he hi-IN hr-HR \
		hr hsb hu id is it ku la lb-LU lt lv mg-MG mi mn \
		nb-NO ne-NP nl nn-NO nr nso ny-MW oc or-IN pa-IN \
		pl pt-BR pt-PT ro ru sk-SK sl sq sr ss st sv-SE \
		sw-TZ ta tn ts uk ur ve vi xh yi zu

BUILD_DEPENDS =	archivers/unzip

DIST_SUBDIR =	${NAME}-${V}
NO_BUILD =	Yes
NO_TEST =	Yes

.for i in ${LANGUAGES}
SUPDISTFILES +=	$i.xpi
.endfor

DISTFILES +=	$L.xpi
PKGNAME =	${NAME}-$L-${V}
COMMENT =	$L dictionary for Mozilla
L2 ?=		$L

# use the same for all subpackages
PKGDIR =	${.CURDIR}/../pkg
PLIST ?=	${PKGDIR}/PLIST
DESCR =		${PKGDIR}/DESCR
CHECKSUM_FILE =	${.CURDIR}/../distinfo
SUBST_VARS =	L L2

do-extract:
	@${UNZIP} -oq ${FULLDISTDIR}/$L.xpi -d ${WRKDIR} \*.aff
	@${UNZIP} -oq ${FULLDISTDIR}/$L.xpi -d ${WRKDIR} \*.dic

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mozilla-dicts
	${INSTALL_DATA} ${WRKDIR}/dictionaries/*.aff \
		${PREFIX}/share/mozilla-dicts/
	${INSTALL_DATA} ${WRKDIR}/dictionaries/*.dic \
		${PREFIX}/share/mozilla-dicts/
