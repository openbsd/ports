# $OpenBSD: Makefile,v 1.23 2019/07/12 20:44:09 sthen Exp $

COMMENT=		utility library including a imlib2 wrapper

DISTNAME=		giblib-1.2.4
REVISION =		8
SHARED_LIBS=		giblib	1.6	# .1.6

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext freetype m xcb z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=project/slackbuildsdirectlinks/giblib/}

LIB_DEPENDS=		graphics/imlib2
WANTLIB +=		Imlib2>=1

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

FAKE_FLAGS+=		docsdir=${PREFIX}/share/doc/giblib/

.include <bsd.port.mk>
