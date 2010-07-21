# $OpenBSD: Makefile,v 1.18 2010/07/21 05:51:41 ajacoutot Exp $

COMMENT=	library of optimized inner loops

DISTNAME=	liboil-0.3.17
REVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}/download/

SHARED_LIBS+=	oil-0.3		4.0

HOMEPAGE=	http://liboil.freedesktop.org/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-glib

.include <bsd.port.mk>
