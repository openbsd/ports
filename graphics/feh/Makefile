# $OpenBSD: Makefile,v 1.11 2010/07/11 14:46:13 dcoppa Exp $

COMMENT=	lightweight image viewer

DISTNAME=	feh-1.8
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
