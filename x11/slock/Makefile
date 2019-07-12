# $OpenBSD: Makefile,v 1.17 2019/07/12 20:51:21 sthen Exp $

COMMENT=		simple X screen locker

# slock-1.4 drops bsd-auth support; CVE-2016-6866 doesn't affect HAVE_BSD_AUTH
DISTNAME=		slock-1.3
REVISION=		1

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/slock

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 c Xext Xrandr

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_ENV=		CC="${CC}" \
			LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
