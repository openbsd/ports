# $OpenBSD: Makefile,v 1.8 2010/10/23 18:26:20 sthen Exp $

PKG_ARCH=	*

V=		0.1
NAME=		openoffice3-dicts
PKGNAME=	${NAME}-${V}

CATEGORIES=	editors

HOMEPAGE=	http://extensions.services.openoffice.org/dictionary

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# opensource/notspecified 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://blade2k.humppa.hu/openoffice3-dicts/

LANGUAGES=	ar_AR de_DE en_GB en_US fa_IR fr_FR hu_HU nl_NL \
		pl_PL ru_RU sl_SI

EXTRACT_CASES=	*.oxt) break;; 

RUN_DEPENDS=	:openoffice->=3:editors/openoffice3

DIST_SUBDIR=	${NAME}-${V}
NO_EXTRACT=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes

# define one language for the main package
SUBPACKAGE?=    -en_GB

.for i in ${LANGUAGES}
MULTI_PACKAGES+=-$i
DISTFILES+=	$i.oxt
PKGNAME-$i=	${NAME}-$i-${V}
REVISION-$i=	1
COMMENT-$i=	$i dictionary for OpenOffice.Org 3
.endfor
PKGNAME-en_GB=  ${NAME}-en_GB-${V}p1

# use the same for all subpackages
MESSAGE=	${PKGDIR}/MESSAGE

do-install:
.for i in ${LANGUAGES}
	${INSTALL_DATA_DIR} ${PREFIX}/openoffice.org3/share/extension/install/
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/$i.oxt ${PREFIX}/openoffice.org3/share/extension/install/
.endfor

.include <bsd.port.mk>
