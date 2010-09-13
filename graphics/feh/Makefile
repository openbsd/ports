# $OpenBSD: Makefile,v 1.12 2010/09/13 07:24:23 dcoppa Exp $

COMMENT=	lightweight image viewer

DISTNAME=	feh-1.9
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	graphics

HOMEPAGE=	https://derf.homelinux.org/~derf/projects/feh/

MAINTAINER=	Victor Sahlstedt <salan@legonet.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	Imlib2 X11 Xinerama c m png

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	giblib.>=1::devel/giblib

# needed for jpegtran on NO_SHARED_LIBS archs
RUN_DEPENDS=	::graphics/jpeg

CFLAGS+=	-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib
MAKE_FLAGS=	LDFLAGS="${LDFLAGS}" man_dir="${DESTDIR}${PREFIX}/man"
FAKE_FLAGS=	PREFIX="${PREFIX}"

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
