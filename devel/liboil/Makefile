# $OpenBSD: Makefile,v 1.12 2008/06/10 05:11:21 pvalchev Exp $

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

MODULES=		gcc4

MODGCC4_ARCHES=		powerpc
MODGCC4_LANGS=		c

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-glib

.include <bsd.port.mk>
