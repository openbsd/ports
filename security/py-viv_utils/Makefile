# $OpenBSD: Makefile,v 1.1.1.1 2018/03/29 19:40:55 rpointel Exp $

COMMENT =	utilities for working with vivisect

MODPY_EGG_VERSION =	0.3.9
DISTNAME =	viv_utils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://github.com/williballenthin/viv-utils

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =	.zip

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-funcy \
		devel/py-intervaltree \
		security/py-vivisect \
		security/py-pefile

TEST_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
