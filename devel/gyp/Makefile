# $OpenBSD: Makefile,v 1.8 2021/01/16 17:26:16 abieber Exp $

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
MODPY_SETUPTOOLS=	Yes

NO_CCACHE=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
