# $OpenBSD: Makefile,v 1.24 2017/01/06 16:51:56 shadchin Exp $

COMMENT =		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION =	2.8.1
DISTNAME =		Jinja2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

GH_ACCOUNT=		pallets
GH_PROJECT=		jinja
GH_TAGNAME=		${MODPY_EGG_VERSION}

CATEGORIES =		www devel

HOMEPAGE =		http://jinja.pocoo.org/

MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
