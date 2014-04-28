# $OpenBSD: Makefile,v 1.5 2014/04/28 14:56:10 benoit Exp $

COMMENT =		computer algebra system (CAS) in Python

MODPY_EGG_VERSION =	0.7.5
DISTNAME =		sympy-${MODPY_EGG_VERSION}
PKGNAME =		py-sympy-${MODPY_EGG_VERSION}
CATEGORIES =		math

HOMEPAGE =		http://sympy.org

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/sympy/} \
			https://sympy.googlecode.com/files/

MODULES =		lang/python
RUN_DEPENDS =		devel/ipython
PATCHORIG =		.origy

do-test:
	        cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
