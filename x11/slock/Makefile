# $OpenBSD: Makefile,v 1.11 2013/03/11 11:46:15 espie Exp $

COMMENT=		simple X screen locker

DISTNAME=		slock-1.1

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/slock

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c Xext

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_ENV=		CC="${CC}" \
			LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
