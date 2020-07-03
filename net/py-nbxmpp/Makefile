# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:01 sthen Exp $

COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	0.6.10
DISTNAME =		nbxmpp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net devel
REVISION =		0

HOMEPAGE =		https://python-nbxmpp.gajim.org/

MAINTAINER =		Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=n/nbxmpp/}

MODULES =		lang/python
NO_TEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
