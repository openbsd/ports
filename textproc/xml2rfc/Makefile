# $OpenBSD: Makefile,v 1.40 2019/07/12 20:50:17 sthen Exp $

COMMENT=	convert memos written in XML to the RFC format

MODPY_EGG_VERSION =	2.5.2
DISTNAME=	xml2rfc-${MODPY_EGG_VERSION}
CATEGORIES=	textproc

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=x/xml2rfc/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-lxml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
