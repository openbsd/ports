# $OpenBSD: Makefile,v 1.2 2010/08/30 21:21:54 sthen Exp $

COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	0.5.0rc1
DISTNAME =		xmpppy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0
CATEGORIES =		net devel

HOMEPAGE =		http://xmpppy.sourceforge.net/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xmpppy/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
