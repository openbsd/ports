# $OpenBSD: Makefile,v 1.7 2015/09/18 07:36:46 benoit Exp $

COMMENT =		computer algebra system (CAS) in Python

MODPY_EGG_VERSION =	0.7.6.1
DISTNAME =		sympy-${MODPY_EGG_VERSION}
PKGNAME =		py-sympy-${MODPY_EGG_VERSION}
CATEGORIES =		math

HOMEPAGE =		http://sympy.org

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
RUN_DEPENDS =		devel/ipython
PATCHORIG =		.origy

do-test:
	        cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
