# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:47 sthen Exp $

COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	0.5.0rc1
DISTNAME =		xmpppy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3
CATEGORIES =		net devel

HOMEPAGE =		http://xmpppy.sourceforge.net/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xmpppy/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>
