COMMENT =	python tools to analyze OLE files

MODPY_EGG_VERSION = 0.60.1
DISTNAME =	oletools-${MODPY_EGG_VERSION}
EXTRACT_SUFX =	.zip
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://www.decalage.info/python/oletools

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD
# oletools/thirdparty files have their own licenses
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

# XXX: if easygui is imported, can uncomment olebrowse
#      and ezhexviewer in PLIST
# XXX: pcodedmp needed for olevba, but it can be run with --no-pcode
# XXX: colorclass also needed by some tools
RUN_DEPENDS =	${MODPY_TKINTER_DEPENDS} \
		devel/py-parsing${MODPY_FLAVOR}>=2.2.0 \
		devel/py-olefile${MODPY_FLAVOR}

.include <bsd.port.mk>
