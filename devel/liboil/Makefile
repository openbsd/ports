# $OpenBSD: Makefile,v 1.10 2008/03/20 18:21:39 jasper Exp $

COMMENT=	library of optimized inner loops

DISTNAME=	liboil-0.3.14
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

.if ${MACHINE_ARCH} == "alpha"
CFLAGS+=-mieee
.endif

.include <bsd.port.mk>
