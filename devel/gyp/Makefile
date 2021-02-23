# $OpenBSD: Makefile,v 1.9 2021/02/23 19:39:15 sthen Exp $

COMMENT= generate SCons/Makefiles from platform-independent input

DISTNAME=	gyp-r1812
REVISION=	2
PKGNAME=	${DISTNAME:S/r/0./g}

CATEGORIES=	devel

HOMEPAGE=	https://bugs.chromium.org/p/gyp/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://deftly.net/

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS=	Yes

NO_CCACHE=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
