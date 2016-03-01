# $OpenBSD: Makefile,v 1.1.1.1 2016/03/01 18:22:38 rpointel Exp $

COMMENT =	python tools to analyze OLE files

MODPY_EGG_VERSION = 0.42.1
DISTNAME =	oletools-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	http://www.decalage.info/python/oletools

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD (apart from the thirdparty folder which contains third-party files published with their own license.)
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI = 	Yes

MODULES =	lang/python

RUN_DEPENDS +=	${MODPY_TKINTER_DEPENDS}

MODPY_ADJ_FILES = oletools/*.py

post-install:
.for i in olebrowse oleid olemeta oletimes olevba pyxswf rtfobj
	chmod +x ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/oletools/${i}.py
	ln -s ${TRUEPREFIX}/lib/python${MODPY_VERSION}/site-packages/oletools/${i}.py ${PREFIX}/bin/${i}
.endfor

NO_TEST =	Yes

.include <bsd.port.mk>
