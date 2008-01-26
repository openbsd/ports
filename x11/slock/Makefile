# $OpenBSD: Makefile,v 1.4 2008/01/26 18:48:19 matthieu Exp $

COMMENT=		simple X screen locker

DISTNAME=		slock-0.7

CATEGORIES=		x11

HOMEPAGE=		http://www.suckless.org/wiki/tools/xlib

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://www.suckless.org/download/

FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
