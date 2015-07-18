# $OpenBSD: Makefile,v 1.1.1.1 2015/07/18 00:31:07 jca Exp $

COMMENT =		console-based visual debugger for Python

MODPY_EGG_VERSION =	2015.3
DISTNAME =		pudb-${MODPY_EGG_VERSION}

CATEGORIES =		devel

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-urwid>=1.1.1 \
			textproc/py-pygments

TEST_DEPENDS =          ${RUN_DEPENDS}

.include <bsd.port.mk>
