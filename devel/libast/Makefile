# $OpenBSD: Makefile,v 1.20 2015/03/16 18:07:41 naddy Exp $

COMMENT=		library of assorted spiffy things

DISTNAME=		libast-0.7
PKGNAME=		${DISTNAME}
REVISION =		7
SHARED_LIBS +=	ast                  3.0      # .2.1
CATEGORIES=		devel

HOMEPAGE=		http://eterm.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE m SM freetype X11 Xau Xdmcp Xext pthread-stubs \
			xcb z Imlib2>=2

MASTER_SITES=		http://www.eterm.org/download/

LIB_DEPENDS=		graphics/imlib2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
