# $OpenBSD: Makefile,v 1.21 2017/06/14 21:21:43 rsadowski Exp $

COMMENT=		utility library including a imlib2 wrapper

DISTNAME=		giblib-1.2.4
REVISION =		7
SHARED_LIBS=		giblib	1.6	# .1.6

CATEGORIES=		devel

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext freetype m xcb z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=project/slackbuildsdirectlinks/giblib/}

LIB_DEPENDS=		graphics/imlib2
WANTLIB +=		Imlib2>=1

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

FAKE_FLAGS+=		docsdir=${PREFIX}/share/doc/giblib/

.include <bsd.port.mk>
