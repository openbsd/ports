# $OpenBSD: Makefile,v 1.4 2010/09/16 22:59:43 fgsch Exp $

COMMENT =	pure Python implementation of Git file formats and protocols

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		dulwich-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

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

REGRESS_DEPENDS =	::devel/py-nose

do-regress:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
