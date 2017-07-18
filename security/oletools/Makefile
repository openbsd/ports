# $OpenBSD: Makefile,v 1.8 2017/07/18 07:57:05 rpointel Exp $

COMMENT =	python tools to analyze OLE files

MODPY_EGG_VERSION = 0.51
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
.for i in ezhexviewer mraptor olebrowse oledir oleid olemap olemeta oleobj oletimes olevba pyxswf rtfobj
	chmod +x ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/oletools/${i}.py
.endfor

NO_TEST =	Yes

.include <bsd.port.mk>
