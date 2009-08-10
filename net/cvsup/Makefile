# $OpenBSD: Makefile,v 1.20 2009/08/10 06:33:43 kili Exp $

ONLY_FOR_ARCHS=	i386
COMMENT-main=	network file distribution system
COMMENT-server=	network file distribution server

VERSION=	16.1h
DISTNAME=	cvsup-snap-${VERSION}
PKGNAME-main=	cvsup-${VERSION}p2
PKGNAME-server=	cvsupd-${VERSION}p0
CATEGORIES=	net devel
HOMEPAGE=	http://www.cvsup.org/

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES= 	ftp://ftp.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.se.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.uk.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.ru.FreeBSD.org/pub/FreeBSD/
MASTER_SITES:=	${MASTER_SITES:=development/CVSup/snapshots/}

MULTI_PACKAGES=	-main -server

WANTLIB=	c m util z

BUILD_DEPENDS=	::lang/ezm3

FLAVORS=	no_x11
FLAVOR?=

M3FLAGS=	 -DPREFIX=${PREFIX} -DX11BASE=${X11BASE}

.if ${FLAVOR:L:Mno_x11}
M3FLAGS+=	-DNOGUI
.else
USE_X11=	Yes
WANTLIB-main=	${WANTLIB} ICE SM X11 Xaw Xext Xmu Xt pthread-stubs xcb
.endif

MAKE_FLAGS=	M3FLAGS="${M3FLAGS}"
FAKE_FLAGS=	PREFIX=${WRKINST}${TRUEPREFIX}

NO_REGRESS=	Yes

.include <bsd.port.mk>
