COMMENT=	time/date applet for WindowMaker

DISTNAME=	wmtime-1.4
CATEGORIES=	x11 x11/windowmaker

HOMEPAGE=	https://www.dockapps.net/wmtime

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xpm c dockapp iconv m

MASTER_SITES=	https://www.dockapps.net/download/

LIB_DEPENDS=	converters/libiconv \
		devel/libdockapp>=0.7.3

MAKE_FLAGS+=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}" \
		MANDIR="${PREFIX}/man/man1"

NO_TEST=	Yes

CFLAGS+=	-I${X11BASE}/include -I${LOCALBASE}/include

LDFLAGS+=	-L${X11BASE}/lib -L${LOCALBASE}/lib -liconv

WRKDIST=	${WRKDIR}/dockapps-7d1ef92

ALL_TARGET+=	wmtime

.include <bsd.port.mk>
