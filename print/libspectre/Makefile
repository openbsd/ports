# $OpenBSD: Makefile,v 1.1.1.1 2008/12/12 16:02:51 ajacoutot Exp $

COMMENT=	library for rendering Postscript documents

DISTNAME=	libspectre-0.2.2
CATEGORIES=	print

SHARED_LIBS=	spectre 0.0	# .2.2

HOMEPAGE=	http://libspectre.freedesktop.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt ijs jpeg m png z

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	converters/libiconv

LIB_DEPENDS=	gs.>=11:ghostscript-*-gtk:print/ghostscript/gnu,gtk

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-test

.include <bsd.port.mk>
