# $OpenBSD: Makefile,v 1.5 2000/02/15 05:03:56 turan Exp $

DISTNAME=	gom-0.29.103
CATEGORIES=     audio
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/sound/mixers

NEED_VERSION=	1.73

MAINTAINER=	scott@tranzoa.com

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

LIB_DEPENDS=	xview:${PORTSDIR}/x11/xview-lib \
		olgx:${PORTSDIR}/x11/xview-lib

SEPARATE_BUILD=	concurrent
USE_AUTOCONF=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
# You can disable the X version of gom, and only have a console
# interface by commenting out the following line...
CONFIGURE_ARGS+= --with-x --enable-x-gomii

.include <bsd.port.mk>
