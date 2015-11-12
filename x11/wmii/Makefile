# $OpenBSD: Makefile,v 1.21 2015/11/12 09:59:41 sthen Exp $

COMMENT=	dynamic window manager

DISTNAME=	wmii-3.6
REVISION=	6
CATEGORIES=	x11

HOMEPAGE=	http://wmii.suckless.org/

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://dl.suckless.org/wmii/

WANTLIB += X11 Xext c m

MODULES=	converters/libiconv

BUILD_DEPENDS=	devel/libixp

RUN_DEPENDS=	x11/dmenu

NO_TEST=	Yes

MAKE_FLAGS=	noisycc=1
FAKE_FLAGS=	PREFIX=${WRKINST}${LOCALBASE} \
		MAN=${WRKINST}${LOCALBASE}/man

.include <bsd.port.mk>
