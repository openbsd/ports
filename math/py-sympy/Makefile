# $OpenBSD: Makefile,v 1.3 2013/03/11 11:23:56 espie Exp $

COMMENT =		computer algebra system (CAS) in Python

MODPY_EGG_VERSION =	0.7.2
DISTNAME =		sympy-${MODPY_EGG_VERSION}
PKGNAME =		py-sympy-${MODPY_EGG_VERSION}
CATEGORIES =		math

HOMEPAGE =		http://sympy.org

MAINTAINER =		Wen Heping <wenheping@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/sympy/} \
			http://sympy.googlecode.com/files/

MODULES =		lang/python
RUN_DEPENDS =		devel/ipython
PATCHORIG =		.origy

do-test:
	        cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
