# $OpenBSD: Makefile,v 1.1.1.1 2014/11/01 20:46:24 abieber Exp $

COMMENT =		network address representation and manipulation library

MODPY_EGG_VERSION =	0.7.12
DISTNAME =		netaddr-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		http://github.com/drkjam/netaddr/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=n/netaddr/}

MODULES =		lang/python

RUN_DEPENDS =		devel/ipython

NO_TEST =		Yes

.include <bsd.port.mk>
