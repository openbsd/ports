#	$OpenBSD: Makefile,v 1.4 2016/01/07 21:37:49 jasper Exp $

COMMENT =		internationalization helper for Sphinx

MODPY_EGG_VERSION =	0.9.5
PKGNAME =		py-sphinx-intl-${MODPY_EGG_VERSION}
DISTNAME =		sphinx-intl-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc


# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes


MODULES =		lang/python
RUN_DEPENDS =		textproc/py-sphinx \
			textproc/py-polib \
			devel/py-six \
			devel/gettext

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
