# $OpenBSD: Makefile,v 1.1.1.1 2009/04/08 23:35:07 martynas Exp $

COMMENT =		python documentation generator

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		Sphinx-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		http://sphinx.pocoo.org/

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=S/Sphinx/}

MODULES =		lang/python
RUN_DEPENDS =		::textproc/py-pygments \
			::textproc/py-docutils \
			::www/py-jinja2
BUILD_DEPENDS =		${RUN_DEPENDS}
REGRESS_DEPENDS =	::devel/py-nose

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1/

do-regress:
	cd ${WRKSRC}/tests && ${MODPY_BIN} run.py

.include <bsd.port.mk>
