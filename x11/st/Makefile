# $OpenBSD: Makefile,v 1.12 2015/07/24 15:39:23 czarkoff Exp $

COMMENT=		simple X terminal

DISTNAME=		st-0.6
REVISION=		0

CATEGORIES=		x11

HOMEPAGE=		http://st.suckless.org/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m util X11 Xext Xft fontconfig freetype z

MASTER_SITES=		http://dl.suckless.org/st/

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
