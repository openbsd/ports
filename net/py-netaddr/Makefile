# $OpenBSD: Makefile,v 1.3 2016/03/02 15:10:54 abieber Exp $

COMMENT =		network address representation and manipulation library

MODPY_EGG_VERSION =	0.7.18
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
