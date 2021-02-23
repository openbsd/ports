# $OpenBSD: Makefile,v 1.9 2021/02/23 19:39:37 sthen Exp $

COMMENT =	Gadgets finder and auto-roper

MODPY_EGG_VERSION =	6.4
GH_TAGNAME =	v${MODPY_EGG_VERSION}
GH_PROJECT =	ROPGadget
GH_ACCOUNT =	JonathanSalwan
DISTNAME =	ROPGadget-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	http://shell-storm.org/project/ROPgadget/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/capstone/python${MODPY_FLAVOR}

WRKDIST =	${WRKDIR}/ROPgadget-${MODPY_EGG_VERSION}

.include <bsd.port.mk>
