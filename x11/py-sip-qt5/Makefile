# $OpenBSD: Makefile,v 1.3 2021/01/19 06:26:49 rsadowski Exp $

COMMENT =	sip extension for qt5

# XXX  keep in sync with py-sip and carefully test with py-qt5 consumers

MODPY_EGG_VERSION =	5.5.0
DISTNAME =		sip-${MODPY_EGG_VERSION}
PKGNAME =		py-sip-qt5-${MODPY_EGG_VERSION}
CATEGORIES =		x11

HOMEPAGE =	https://www.riverbankcomputing.com/software/sip/intro

# SIP license (Python like)
PERMIT_PACKAGE=	Yes

WANTLIB =	m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
