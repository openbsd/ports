# $OpenBSD: Makefile,v 1.5 2008/06/02 20:09:53 wcmaier Exp $

COMMENT=		simple X screen locker

DISTNAME=		slock-0.8

CATEGORIES=		x11

HOMEPAGE=		http://www.suckless.org/wiki/tools/xlib

MAINTAINER=		Gleydson Soares <gsoares@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c Xext

MASTER_SITES=		http://www.suckless.org/download/

MAKE_ENV=		CC="${CC}" \
			LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
