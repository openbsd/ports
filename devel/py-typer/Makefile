COMMENT =		library for building CLI applications

MODPY_DISTV =		0.21.1
DISTNAME =		typer-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/fastapi/typer

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		pdm

RUN_DEPENDS =		devel/py-click>=8.0.0 \
			devel/py-typing-extensions>=3.7.4.3

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
FISH_DIR =		main
.else
FISH_DIR =		v3
.endif

TEST_DEPENDS =		devel/py-coverage>=6.2 \
			devel/py-rich>=10.11.0 \
			devel/py-shellingham>=1.3.0 \
			shells/bash \
			shells/fish/${FISH_DIR} \
			shells/zsh

MODPY_TEST_LIBDIR =	.:typer
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
