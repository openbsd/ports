# $OpenBSD: Makefile,v 1.1.1.1 2007/01/19 05:24:08 steven Exp $

COMMENT=		"simple X screen locker"

DISTNAME=		slock-0.4

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c

MASTER_SITES=		${HOMEPAGE}download/

FAKE_FLAGS=             DESTDIR=""

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
