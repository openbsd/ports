# $OpenBSD: Makefile,v 1.59 2014/04/15 13:02:21 dcoppa Exp $

COMMENT=	lightweight image viewer

DISTNAME=	feh-2.10
REVISION=	0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	graphics

HOMEPAGE=	http://feh.finalrewind.org/

MAINTAINER=	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	Imlib2 X11 Xinerama c curl exif giblib>=1 m png

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	devel/giblib \
		graphics/libexif \
		net/curl

# needed for jpegtran on NO_SHARED_LIBS archs
RUN_DEPENDS=	graphics/jpeg

RUN_DEPENDS+=	devel/desktop-file-utils

CFLAGS+=	-I${LOCALBASE}/include \
		-I${X11BASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib
MAKE_FLAGS=	LDFLAGS="${LDFLAGS}" man_dir="${DESTDIR}${PREFIX}/man" \
		example_dir="${DESTDIR}${PREFIX}/share/examples/feh"
FAKE_FLAGS=	PREFIX="${PREFIX}"

USE_GMAKE=	Yes

NO_TEST=	Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/examples/themes ${WRKSRC}/man/feh.pre \
		${WRKSRC}/src/events.c ${WRKSRC}/src/keyevents.c \
			${WRKSRC}/src/options.c

.include <bsd.port.mk>
