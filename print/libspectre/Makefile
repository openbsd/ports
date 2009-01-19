# $OpenBSD: Makefile,v 1.2 2009/01/19 14:03:53 ajacoutot Exp $

# libgs from ghostscript is only provided on shared libs archs
SHARED_ONLY=	Yes

COMMENT=	library for rendering Postscript documents

DISTNAME=	libspectre-0.2.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	print

SHARED_LIBS=	spectre 0.0	# .2.2

HOMEPAGE=	http://libspectre.freedesktop.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

LIB_DEPENDS=	gs.>=11::print/ghostscript/gnu

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-test

.include <bsd.port.mk>
