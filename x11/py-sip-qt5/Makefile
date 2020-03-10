# $OpenBSD: Makefile,v 1.1.1.1 2020/03/10 09:32:46 landry Exp $

COMMENT =	sip extension for qt5

# XXX  keep in sync with py-sip and carefully test with py-qt5 consumers

MODPY_EGG_VERSION =	4.19.19
DISTNAME =	sip-${MODPY_EGG_VERSION}
PKGNAME =	py-sip-qt5-${MODPY_EGG_VERSION}
CATEGORIES =	x11

HOMEPAGE =	https://www.riverbankcomputing.com/software/sip/intro

# SIP license (Python like)
PERMIT_PACKAGE=	Yes

WANTLIB =	m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

MASTER_SITES =	https://www.riverbankcomputing.com/static/Downloads/sip/${MODPY_EGG_VERSION}/

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} configure.py
CONFIGURE_ARGS =	--sip-module PyQt5.sip --no-tools

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}"

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure.py

.include <bsd.port.mk>
