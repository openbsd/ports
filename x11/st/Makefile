# $OpenBSD: Makefile,v 1.14 2017/04/05 21:29:57 juanfra Exp $

COMMENT=		simple X terminal

DISTNAME=		st-0.7
REVISION=		0

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
