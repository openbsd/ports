# $OpenBSD: Makefile,v 1.45 2021/11/02 00:02:42 sthen Exp $

COMMENT=	convert memos written in XML to the RFC format

MODPY_EGG_VERSION=	2.11.1
REVISION=	1
DISTNAME=	xml2rfc-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-intervaltree${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/pyflakes${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
