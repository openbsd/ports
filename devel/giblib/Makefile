# $OpenBSD: Makefile,v 1.12 2009/08/10 06:31:07 kili Exp $

COMMENT=		utility library including a imlib2 wrapper

DISTNAME=		giblib-1.2.4
PKGNAME=		${DISTNAME}p4
SHARED_LIBS=		giblib	1.6	# .1.6

CATEGORIES=		devel

HOMEPAGE=		http://www.linuxbrit.co.uk/giblib/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext freetype m pthread-stubs xcb z

MASTER_SITES=		http://www.linuxbrit.co.uk/downloads/

LIB_DEPENDS=		Imlib2.>=1::graphics/imlib2

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
