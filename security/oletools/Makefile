# $OpenBSD: Makefile,v 1.7 2016/11/23 19:40:38 rpointel Exp $

COMMENT =	python tools to analyze OLE files

MODPY_EGG_VERSION = 0.50
DISTNAME =	oletools-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	http://www.decalage.info/python/oletools

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD (apart from the thirdparty folder which contains third-party files published with their own license.)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/decalage2/oletools/releases/download/v${MODPY_EGG_VERSION}/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=	${MODPY_TKINTER_DEPENDS}

MODPY_ADJ_FILES = oletools/*.py

post-install:
.for i in ezhexviewer mraptor olebrowse oledir oleid olemap olemeta oletimes olevba pyxswf rtfobj
	chmod +x ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/oletools/${i}.py
.endfor

NO_TEST =	Yes

.include <bsd.port.mk>
