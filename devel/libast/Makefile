# $OpenBSD: Makefile,v 1.22 2019/07/12 20:44:37 sthen Exp $

COMMENT=		library of assorted spiffy things

DISTNAME=		libast-0.7
PKGNAME=		${DISTNAME}
REVISION =		8
SHARED_LIBS +=	ast                  3.0      # .2.1
CATEGORIES=		devel

HOMEPAGE=		http://eterm.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		ICE m SM freetype X11 Xau Xdmcp Xext \
			xcb z Imlib2>=2

MASTER_SITES=		http://www.eterm.org/download/

LIB_DEPENDS=		graphics/imlib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
