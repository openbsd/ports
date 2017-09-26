# $OpenBSD: Makefile,v 1.15 2017/09/26 23:03:53 mestre Exp $

COMMENT=		simple X terminal

DISTNAME=		st-0.7
REVISION=		1

CATEGORIES=		x11

HOMEPAGE=		http://st.suckless.org/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB=		c m util X11 Xft fontconfig freetype z

MASTER_SITES=		http://dl.suckless.org/st/

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
