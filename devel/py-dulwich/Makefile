# $OpenBSD: Makefile,v 1.8 2011/09/16 09:24:55 espie Exp $

COMMENT =	pure Python implementation of Git file formats and protocols

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		dulwich-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		http://samba.org/~jelmer/dulwich/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE} 

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

MODPY_BADEGGS =		dulwich

REGRESS_DEPENDS =	devel/py-nose

WANTLIB +=	${MODPY_WANTLIB}

do-regress:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
