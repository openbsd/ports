# $OpenBSD: Makefile,v 1.13 2009/05/31 16:24:23 sthen Exp $

COMMENT=	dynamic window manager

DISTNAME=	wmii-3.6
PKGNAME=	${DISTNAME}p4
CATEGORIES=	x11

HOMEPAGE=	http://wmii.suckless.org/

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://code.suckless.org/dl/wmii/

WANTLIB += X11 Xext c m

LIB_DEPENDS=	ixp.>=0.4::devel/libixp \
		iconv.>=4.0::converters/libiconv

RUN_DEPENDS=	::x11/dmenu

USE_X11=	Yes

NO_REGRESS=	Yes

MAKE_FLAGS=	noisycc=1
FAKE_FLAGS=	PREFIX=${WRKINST}${LOCALBASE} \
		MAN=${WRKINST}${LOCALBASE}/man

.include <bsd.port.mk>
