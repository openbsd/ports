# $OpenBSD: Makefile,v 1.1.1.1 1999/07/22 02:06:56 brad Exp $

DISTNAME=	gom-0.29.99
CATEGORIES=     audio
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/sound/mixers

NEED_VERSION=	1.73

MAINTAINER=	scott@tranzoa.com

LIB_DEPENDS=	xview:${PORTSDIR}/x11/xview-lib \
		olgx:${PORTSDIR}/x11/xview-lib

SEPARATE_BUILD=	concurrent
USE_AUTOCONF=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
# You can disable the X version of gom, and only have a console
# interface by commenting out the following line...
CONFIGURE_ARGS+= --with-x --enable-x-gomii

.include <bsd.port.mk>
