# $OpenBSD: Makefile,v 1.9 2020/09/19 07:42:31 solene Exp $

COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		nbxmpp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net devel

HOMEPAGE =		https://python-nbxmpp.gajim.org/

MAINTAINER =		Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=n/nbxmpp/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
