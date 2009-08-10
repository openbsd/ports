# $OpenBSD: Makefile,v 1.9 2009/08/10 06:31:42 kili Exp $

COMMENT=		Rich city simulation game for X

DISTNAME=		lincity-1.11
PKGNAME=		${DISTNAME}p1
CATEGORIES=		games
HOMEPAGE=		http://www.floot.demon.co.uk/lincity.html

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext c m pthread-stubs stdc++ xcb

MASTER_SITES=		ftp://ftp.demon.co.uk/pub/unix/linux/games/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes

MAKE_FLAGS=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
ALL_TARGET=		xlincity
NO_REGRESS=		Yes

post-extract:
	@cd ${WRKSRC}; ln -s lincity.man xlincity.man

.include <bsd.port.mk>
