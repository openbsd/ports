# $OpenBSD: Makefile,v 1.4 2018/05/20 10:41:47 feinerer Exp $

COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	0.6.6
DISTNAME =		nbxmpp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net devel

HOMEPAGE =		https://python-nbxmpp.gajim.org/

MAINTAINER =		Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=n/nbxmpp/}

MODULES =		lang/python
NO_TEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
