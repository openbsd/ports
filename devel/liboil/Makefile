# $OpenBSD: Makefile,v 1.14 2009/07/18 08:25:06 sthen Exp $

COMMENT=	library of optimized inner loops

DISTNAME=	liboil-0.3.16
SHARED_LIBS+=	oil-0.3		4.0	# .3.0
CATEGORIES=	devel

MASTER_SITES=	${HOMEPAGE}/download/

HOMEPAGE=	http://liboil.freedesktop.org/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c m

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-glib

.include <bsd.port.mk>
