# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:55 espie Exp $

COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	0.5.0rc1
DISTNAME =		xmpppy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2
CATEGORIES =		net devel

HOMEPAGE =		http://xmpppy.sourceforge.net/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xmpppy/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>
