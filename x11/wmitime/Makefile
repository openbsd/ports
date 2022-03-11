COMMENT=		wm-dockapp; shows the date, time, and Internet time

DISTNAME=		wmitime-0.5
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		https://www.dockapps.net/wmitime

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xpm c dockapp iconv m

MASTER_SITES=		https://www.dockapps.net/download/

RUN_DEPENDS=		devel/desktop-file-utils
LIB_DEPENDS=		converters/libiconv \
			devel/libdockapp>=0.7.3

MAKE_FLAGS=		CC="${CC}" PREFIX="${PREFIX}" MANDIR="${PREFIX}/man/man1" \
			CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

NO_TEST=		Yes

CFLAGS+=		-I${LOCALBASE}/include -I${X11BASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib

WRKDIST=		${WRKDIR}/dockapps-26db447

.include <bsd.port.mk>
