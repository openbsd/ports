# $OpenBSD: Makefile,v 1.21 2017/10/23 17:10:38 sthen Exp $

COMMENT=		library of assorted spiffy things

DISTNAME=		libast-0.7
PKGNAME=		${DISTNAME}
REVISION =		8
SHARED_LIBS +=	ast                  3.0      # .2.1
CATEGORIES=		devel

HOMEPAGE=		http://eterm.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE m SM freetype X11 Xau Xdmcp Xext \
			xcb z Imlib2>=2

MASTER_SITES=		http://www.eterm.org/download/

LIB_DEPENDS=		graphics/imlib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
