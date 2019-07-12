# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:05 sthen Exp $

COMMENT =	python tools to analyze OLE files

MODPY_EGG_VERSION = 0.53.1
DISTNAME =	oletools-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	http://www.decalage.info/python/oletools

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD (apart from the thirdparty folder which contains third-party files published with their own license.)
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

EXTRACT_SUFX =	.zip

RUN_DEPENDS +=	${MODPY_TKINTER_DEPENDS} \
		devel/py-parsing

MODPY_ADJ_FILES = oletools/*.py

post-install:
	chmod +x ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/oletools/*.py
#.for i in ezhexviewer mraptor msodde olebrowse oledir oleid olemap olemeta oleobj oletimes olevba pyxswf rtfobj
#.endfor

NO_TEST =	Yes

.include <bsd.port.mk>
