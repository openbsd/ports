# $OpenBSD: Makefile,v 1.16 2010/10/24 21:15:35 ajacoutot Exp $

COMMENT=	dynamic window manager

DISTNAME=	wmii-3.6
REVISION=	5
CATEGORIES=	x11

HOMEPAGE=	http://wmii.suckless.org/

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://code.suckless.org/dl/wmii/

WANTLIB += X11 Xext c m

MODULES=	converters/libiconv

BUILD_DEPENDS=	::devel/libixp

RUN_DEPENDS=	::x11/dmenu

USE_GROFF =	Yes

NO_REGRESS=	Yes

MAKE_FLAGS=	noisycc=1
FAKE_FLAGS=	PREFIX=${WRKINST}${LOCALBASE} \
		MAN=${WRKINST}${LOCALBASE}/man

.include <bsd.port.mk>
