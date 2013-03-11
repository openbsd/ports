# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:25 espie Exp $

COMMENT =	pure Python implementation of Git file formats and protocols

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		dulwich-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		http://samba.org/~jelmer/dulwich/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

MODPY_BADEGGS =		dulwich

TEST_DEPENDS =	devel/py-nose

WANTLIB +=	${MODPY_WANTLIB}

do-test:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
