# $OpenBSD: Makefile,v 1.6 2001/11/01 08:12:19 wilfried Exp $

COMMENT=	"high-performance 2D graphics library"

VERSION=	2.3.3
DISTNAME=	libart-${VERSION}
CATEGORIES=	graphics
NEED_VERSION=	1.475
MASTER_SITES=	http://www.artofcode.com/libart/

HOMEPAGE=	http://www.artofcode.com/libart.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/libart_lgpl-${VERSION}

.include <bsd.port.mk>
