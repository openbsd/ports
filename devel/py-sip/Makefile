# $OpenBSD: Makefile,v 1.54 2021/02/16 23:33:51 sthen Exp $

COMMENT=	automatically generate Python bindings for C and C++ libs

# The following ports often usually need updating together:
# devel/py-sip, www/py-qtwebengine, x11/py-qt5, x11/py-sip-qt5
# API changes fairly often, be sure to test dependent ports when updating.
MODPY_EGG_VERSION=	5.5.0
REVISION=		0

# 6.x removes the "sip" script and wants dependent ports to use
# sip-build instead, math/veusz (at least as of 3.3.1) can't use that
# yet. geo/qgis had a weird failure where it tried to run a program
# "None" in the build which I think may be related too.

DISTNAME=	sip-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
EPOCH=		0

CATEGORIES=	devel

HOMEPAGE=	https://www.riverbankcomputing.com/software/sip/intro

# SIP license (Python like) or GPLv2/v3
PERMIT_PACKAGE=	Yes

WANTLIB=	m ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

RUN_DEPENDS=	sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
