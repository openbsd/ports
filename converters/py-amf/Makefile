# $OpenBSD: Makefile,v 1.1.1.1 2017/12/12 00:46:44 jca Exp $

COMMENT =		serialize and deserialize AMF data

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		PyAMF-${MODPY_EGG_VERSION}
PKGNAME =		py-amf-${MODPY_EGG_VERSION}

CATEGORIES =		converters
HOMEPAGE =		http://pyamf.org/

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-defusedxml

WANTLIB += pthread ${MODPY_WANTLIB}

.include <bsd.port.mk>
