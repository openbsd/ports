# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 08:50:49 landry Exp $

COMMENT =	uPnP/DLNA media server

MODPY_EGG_VERSION =	0.6.4
DISTNAME =	Coherence-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L}
CATEGORIES =    	multimedia

HOMEPAGE =	http://coherence.beebits.net

MAINTAINER =	Landry Breuil <gaston@gcu.info>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}/download/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	::devel/py-twisted/core \
		::devel/py-twisted/web \
		::devel/py-configobj \
		::devel/py-gdata \
		::audio/py-tagpy \
		::www/py-nevow \
		::databases/py-axiom

# need a running instance
NO_REGRESS =	Yes

.include <bsd.port.mk>
