# $OpenBSD: Makefile,v 1.9 2008/09/25 21:13:48 martynas Exp $

PKG_ARCH=	*

V=		1.2
NAME=		mozilla-dicts
PKGNAME=	${NAME}-${V}

CATEGORIES=	textproc

HOMEPAGE=	https://addons.mozilla.org/firefox/browse/type:3

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mirrors.protection.cx/~martynas/mozilla/dicts/${V}/

LANGUAGES=	af ar be bg ca cs cy-GB da de-AT de-CH de-DE el-EN \
		el en-AU en-CA en-GB en-ZA eo es-AR es-ES et eu fr \
		fy-NL ga-IE gl he hr hsb hu id is it ku la lt lv \
		nb-NO nl nn-NO pl pt-BR pt-PT ro ru sk sl sq sr \
		sv-SE uk

BUILD_DEPENDS=	:unzip-*:archivers/unzip

DIST_SUBDIR=	${NAME}-${V}
NO_BUILD=	Yes
NO_REGRESS=	Yes

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
