# $OpenBSD: Makefile,v 1.8 2013/04/19 19:54:34 bentley Exp $

COMMENT=		simple X terminal

DISTNAME=		st-0.4

CATEGORIES=		x11

HOMEPAGE=		http://st.suckless.org/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c util X11 Xext Xft fontconfig freetype z

MASTER_SITES=		http://dl.suckless.org/st/

RUN_DEPENDS=		fonts/liberation-fonts

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
