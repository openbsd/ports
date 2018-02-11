# $OpenBSD: Makefile,v 1.89 2018/02/11 19:23:49 kn Exp $

COMMENT=	lightweight image viewer

DISTNAME=	feh-2.23.1
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	graphics
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	https://feh.finalrewind.org/

MAINTAINER=	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	Imlib2 X11 Xinerama c curl exif m png

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	graphics/imlib2 \
		graphics/libexif \
		net/curl

RUN_DEPENDS+=	devel/desktop-file-utils \
		x11/gtk+3,-guic
TEST_DEPENDS=	devel/p5-Test-Command

CFLAGS+=	-I${LOCALBASE}/include \
		-I${X11BASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib
MAKE_FLAGS=	LDFLAGS="${LDFLAGS}" \
		man_dir="${DESTDIR}${PREFIX}/man" \
		example_dir="${DESTDIR}${PREFIX}/share/examples/feh" \
		exif=1
FAKE_FLAGS=	PREFIX="${PREFIX}"

USE_GMAKE=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/examples/themes ${WRKSRC}/man/feh.pre \
	    ${WRKSRC}/src/{events,keyevents,options}.c

.include <bsd.port.mk>
