# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:35 sthen Exp $

COMMENT =	utilities for working with vivisect

MODPY_EGG_VERSION =	0.3.9
DISTNAME =	viv_utils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://github.com/williballenthin/viv-utils

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =	.zip

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-funcy \
		devel/py-intervaltree \
		security/py-vivisect \
		security/py-pefile

.include <bsd.port.mk>
