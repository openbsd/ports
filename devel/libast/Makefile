# $OpenBSD: Makefile,v 1.18 2013/03/11 10:50:09 espie Exp $

COMMENT=		library of assorted spiffy things

DISTNAME=		libast-0.7
PKGNAME=		${DISTNAME}
REVISION =		6
SHARED_LIBS +=	ast                  3.0      # .2.1
CATEGORIES=		devel

HOMEPAGE=		http://eterm.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE m SM freetype X11 Xau Xdmcp Xext pthread-stubs \
			xcb z Imlib2>=2

MASTER_SITES=		http://www.eterm.org/download/

LIB_DEPENDS=		graphics/imlib2

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
