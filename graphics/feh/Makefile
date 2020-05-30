# $OpenBSD: Makefile,v 1.102 2020/05/30 02:12:35 bcallah Exp $

COMMENT=	lightweight image viewer

DISTNAME=	feh-3.4.1
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	graphics
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	https://feh.finalrewind.org/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	Imlib2 X11 Xinerama c curl exif m png

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	graphics/imlib2 \
		graphics/libexif \
		net/curl

RUN_DEPENDS+=	devel/desktop-file-utils \
		x11/gtk+3,-guic
TEST_DEPENDS=	devel/p5-Test-Command

CFLAGS+=	-I${LOCALBASE}/include \
		-I${X11BASE}/include \
		-std=gnu99
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib
MAKE_FLAGS=	LDFLAGS="${LDFLAGS}" \
		man_dir="${DESTDIR}${PREFIX}/man" \
		example_dir="${DESTDIR}${PREFIX}/share/examples/feh" \
		exif=1 verscmp=0
FAKE_FLAGS=	PREFIX="${PREFIX}"

USE_GMAKE=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/examples/themes ${WRKSRC}/man/feh.pre \
	    ${WRKSRC}/src/{events,keyevents,options}.c

.include <bsd.port.mk>
