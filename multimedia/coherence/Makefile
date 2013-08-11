# $OpenBSD: Makefile,v 1.10 2013/08/11 21:21:39 landry Exp $

COMMENT =	UPnP/DLNA media server

MODPY_EGG_VERSION =	0.6.6.2
DISTNAME =	Coherence-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L}
REVISION =	4
CATEGORIES =	multimedia

HOMEPAGE =	http://coherence.beebits.net

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/download/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS = devel/py-twisted/web
RUN_DEPENDS =	devel/py-twisted/core \
		devel/py-twisted/web \
		devel/py-configobj \
		devel/py-gdata \
		audio/py-tagpy \
		www/py-nevow \
		databases/py-axiom

# need a running instance
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
