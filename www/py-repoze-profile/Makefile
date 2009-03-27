# $OpenBSD: Makefile,v 1.1.1.1 2009/03/27 23:16:23 fgsch Exp $

COMMENT =	aggregate profiling for wsgi requests

MODPY_EGG_VERSION = 0.8
DISTNAME =	repoze.profile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=r/repoze.profile/}

EXTRACT_SUFX =	.zip

RUN_DEPENDS =	::www/py-paste \
		::www/py-meld3 \
		::devel/py-pyprof2calltree
REGRESS_DEPENDS = ${RUN_DEPENDS}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-repoze-profile
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-repoze-profile

.include <bsd.port.mk>
