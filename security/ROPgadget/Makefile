# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:05 sthen Exp $

COMMENT =	Gadgets finder and auto-roper

MODPY_EGG_VERSION =	6.3
GH_TAGNAME =	v${MODPY_EGG_VERSION}
GH_PROJECT =	ROPGadget
GH_ACCOUNT =	JonathanSalwan
DISTNAME =	ROPGadget-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	http://shell-storm.org/project/ROPgadget/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =	devel/capstone/python${MODPY_FLAVOR}

WRKDIST =	${WRKDIR}/ROPgadget-${MODPY_EGG_VERSION}

.include <bsd.port.mk>
