# $OpenBSD: Makefile,v 1.13 2008/08/22 11:53:32 brad Exp $

COMMENT=	library of optimized inner loops

DISTNAME=	liboil-0.3.14
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=  oil-0.3              3.0      # .2.0
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
