# $OpenBSD: Makefile,v 1.47 2012/12/31 12:03:09 dcoppa Exp $

COMMENT=	lightweight image viewer

DISTNAME=	feh-2.8
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	graphics

HOMEPAGE=	http://feh.finalrewind.org/

MAINTAINER=	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	Imlib2 X11 Xinerama c curl exif giblib>=1 m png

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	devel/giblib \
		graphics/libexif \
		net/curl

# needed for jpegtran on NO_SHARED_LIBS archs
RUN_DEPENDS=	graphics/jpeg

CFLAGS+=	-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib
MAKE_FLAGS=	LDFLAGS="${LDFLAGS}" man_dir="${DESTDIR}${PREFIX}/man" \
		example_dir="${DESTDIR}${PREFIX}/share/examples/feh"
FAKE_FLAGS=	PREFIX="${PREFIX}"

USE_GMAKE=	Yes

NO_REGRESS=	Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/examples/themes ${WRKSRC}/man/feh.pre \
		${WRKSRC}/src/events.c ${WRKSRC}/src/keyevents.c \
			${WRKSRC}/src/options.c

.include <bsd.port.mk>
