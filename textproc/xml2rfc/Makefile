# $OpenBSD: Makefile,v 1.43 2021/02/20 18:38:57 sthen Exp $

COMMENT=	convert memos written in XML to the RFC format

MODPY_EGG_VERSION=	2.11.1
REVISION=	0
DISTNAME=	xml2rfc-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-intervaltree${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/pyflakes${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
