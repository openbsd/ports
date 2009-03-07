# $OpenBSD: Makefile,v 1.11 2009/03/07 15:37:39 jasper Exp $

COMMENT=	dynamic window manager

DISTNAME=	wmii-3.6
PKGNAME=	${DISTNAME}p2
CATEGORIES=	x11

HOMEPAGE=	http://www.suckless.org

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB += X11 Xext c m

LIB_DEPENDS=	ixp.>=0.4::devel/libixp \
		iconv.>=4.0::converters/libiconv

RUN_DEPENDS=	::x11/dmenu

USE_X11=	Yes

NO_REGRESS=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}/usr/local \
		MAN=${WRKINST}/usr/local/man

.include <bsd.port.mk>
