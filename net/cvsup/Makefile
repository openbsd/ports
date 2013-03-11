# $OpenBSD: Makefile,v 1.26 2013/03/11 11:35:46 espie Exp $

ONLY_FOR_ARCHS=	i386
COMMENT-main=	network file distribution system
COMMENT-server=	network file distribution server

VERSION=	16.1h
DISTNAME=	cvsup-snap-${VERSION}
PKGNAME-main=	cvsup-${VERSION}
PKGNAME-server=	cvsupd-${VERSION}
REVISION-main=	2
REVISION-server=0
CATEGORIES=	net devel
HOMEPAGE=	http://www.cvsup.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES= 	ftp://ftp.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.se.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.uk.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.ru.FreeBSD.org/pub/FreeBSD/
MASTER_SITES:=	${MASTER_SITES:=development/CVSup/snapshots/}

MULTI_PACKAGES=	-main -server

WANTLIB=	c m util z

BUILD_DEPENDS=	lang/ezm3

FLAVORS=	no_x11
FLAVOR?=

M3FLAGS=	 -DPREFIX=${PREFIX} -DX11BASE=${X11BASE}

.if ${FLAVOR:Mno_x11}
M3FLAGS+=	-DNOGUI
.else
WANTLIB-main=	${WANTLIB} ICE SM X11 Xaw Xext Xmu Xt pthread-stubs xcb
.endif

MAKE_FLAGS=	M3FLAGS="${M3FLAGS}"
FAKE_FLAGS=	PREFIX=${WRKINST}${TRUEPREFIX}

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
