# $OpenBSD: Makefile,v 1.2 2019/05/15 12:04:40 kmos Exp $

COMMENT =	Gadgets finder and auto-roper

MODPY_EGG_VERSION =	5.7
GH_TAGNAME =	v${MODPY_EGG_VERSION}
GH_PROJECT =	ROPGadget
GH_ACCOUNT =	JonathanSalwan
DISTNAME =	ROPGadget-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	http://shell-storm.org/project/ROPgadget/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/capstone/python

WRKDIST =	${WRKDIR}/ROPgadget-${MODPY_EGG_VERSION}

.include <bsd.port.mk>
