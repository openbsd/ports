COMMENT =	python tools to analyze OLE files

MODPY_DISTV =	0.60.2
DISTNAME =	oletools-${MODPY_DISTV}
EXTRACT_SUFX =	.zip

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
		devel/py-parsing>=2.2.0 \
		devel/py-olefile

.include <bsd.port.mk>
