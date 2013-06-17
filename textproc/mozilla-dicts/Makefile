# $OpenBSD: Makefile,v 1.17 2013/06/17 09:26:41 ajacoutot Exp $

PKG_ARCH=	*

V=		1.3
NAME=		mozilla-dicts
PKGNAME=	${NAME}-${V}

CATEGORIES=	textproc

HOMEPAGE=	https://addons.mozilla.org/language-tools/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://spacehopper.org/martynas/mozilla/dicts/${V}/

LANGUAGES=	af ak am-ET ar az-IR be bg bn-BD ca-valencia ca cs \
		csb cy-GB da de-AT de-CH de-DE dsb el en-AU en-CA \
		en-GB en-ZA eo es-AR es-MX es-VE es-es et eu fa \
		fo-FO fr fur-IT fy-NL ga-IE gl gu-IN he hi-IN hr-HR \
		hr hsb hu id is it ku la lb-LU lt lv mg-MG mi mn \
		nb-NO ne-NP nl nn-NO nr nso ny-MW oc or-IN pa-IN \
		pl pt-BR pt-PT ro ru sk-SK sl sq sr ss st sv-SE \
		sw-TZ ta tn ts uk ur ve vi xh yi zu

BUILD_DEPENDS=	archivers/unzip

DIST_SUBDIR=	${NAME}-${V}
NO_BUILD=	Yes
NO_TEST=	Yes

# define one language for the main package
SUBPACKAGE?=	-en-GB

.for i in ${LANGUAGES}
MULTI_PACKAGES+=-$i
DISTFILES+=	$i.xpi
PKGNAME-$i=	${NAME}-$i-${V}
COMMENT-$i=	$i dictionary for Mozilla
.endfor

do-extract:
.for i in ${LANGUAGES}
	@${UNZIP} -oq ${FULLDISTDIR}/$i.xpi -d ${WRKDIR} \*.aff
	@${UNZIP} -oq ${FULLDISTDIR}/$i.xpi -d ${WRKDIR} \*.dic
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mozilla-dicts
	${INSTALL_DATA} ${WRKDIR}/dictionaries/*.aff \
		${PREFIX}/share/mozilla-dicts/
	${INSTALL_DATA} ${WRKDIR}/dictionaries/*.dic \
		${PREFIX}/share/mozilla-dicts/

.include <bsd.port.mk>
