# $OpenBSD: Makefile,v 1.9 2012/03/15 13:12:43 gsoares Exp $

COMMENT=		simple X screen locker

DISTNAME=		slock-1.0

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/slock

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c Xext

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_ENV=		CC="${CC}" \
			LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_REGRESS=		Yes

.include <bsd.port.mk>
