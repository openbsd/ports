COMMENT=		utility library including a imlib2 wrapper

DISTNAME=		giblib-1.2.4
REVISION =		9
SHARED_LIBS=		giblib	1.6	# .1.6

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += Imlib2 X11 X11-xcb Xext freetype m xcb xcb-shm

SITES=		${SITE_SOURCEFORGE:=project/slackbuildsdirectlinks/giblib/}

LIB_DEPENDS=		graphics/imlib2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

FAKE_FLAGS+=		docsdir=${PREFIX}/share/doc/giblib/

.include <bsd.port.mk>
