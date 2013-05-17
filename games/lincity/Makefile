# $OpenBSD: Makefile,v 1.15 2013/05/17 09:12:26 kirby Exp $

COMMENT=		Rich city simulation game for X

DISTNAME=		lincity-1.11
REVISION =		2
CATEGORIES=		games
HOMEPAGE=		http://lincity.sourceforge.net/

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xau Xdmcp Xext c m pthread-stubs stdc++ xcb

MASTER_SITES=		http://www.linklevel.net/distfiles/

BUILD_DEPENDS=		devel/imake

MAKE_FLAGS=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
ALL_TARGET=		xlincity
USE_GROFF =		Yes
NO_TEST=		Yes

post-extract:
	@cd ${WRKSRC}; ln -s lincity.man xlincity.man

.include <bsd.port.mk>
