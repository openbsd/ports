COMMENT =	simple and powerful editor for markup languages

MODPY_DISTV =	8.1.0
DISTNAME =	retext-${MODPY_DISTV}

CATEGORIES =	textproc

# GPLv2
PERMIT_PACKAGE =	Yes

HOMEPAGE =	https://github.com/retext-project/retext

MAINTAINER =	Pedro Almeida <palmeida@monkeys.pt>

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	x11/py-qt6 \
		textproc/py-markups \
		x11/gtk+4,-guic
# optional but useful
RUN_DEPENDS +=	textproc/py-chardet \
		textproc/py-enchant

pre-build:
	ln -fs ${LOCALBASE}/bin/qmake-qt6 ${WRKDIR}/bin/qmake6

.include <bsd.port.mk>
