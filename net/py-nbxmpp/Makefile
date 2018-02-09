# $OpenBSD: Makefile,v 1.2 2018/02/09 19:52:10 phessler Exp $

COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	0.6.2
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

.include <bsd.port.mk>
