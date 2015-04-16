# $OpenBSD: Makefile,v 1.6 2015/04/16 10:27:26 jung Exp $

COMMENT =	simple (or small or suckless) X Image Viewer

GH_PROJECT=	sxiv
GH_ACCOUNT=	muennich
GH_TAGNAME=	v1.3.1
DISTNAME=	${GH_PROJECT}-${GH_TAGNAME:S/v//}

CATEGORIES =	graphics x11

HOMEPAGE =	https://github.com/muennich/sxiv

MAINTAINER =	Matthew Via <via@matthewvia.info>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=	Imlib2 exif gif X11 c

LIB_DEPENDS =	graphics/imlib2 \
		graphics/libexif

MAKE_FLAGS =	CC=${CC} MANPREFIX=${PREFIX}/man \
		CFLAGS="${CFLAGS} -I${X11BASE}/include -I${PREFIX}/include" \
		LDFLAGS="-L${PREFIX}/lib -L${X11BASE}/lib -lX11 -lImlib2 -lexif -lgif"

NO_TEST =	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
