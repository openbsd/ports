# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:16 jasper Exp $

COMMENT =		network address representation and manipulation library

MODPY_EGG_VERSION =	0.7.12
DISTNAME =		netaddr-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		http://github.com/drkjam/netaddr/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/ipython

NO_TEST =		Yes

.include <bsd.port.mk>
