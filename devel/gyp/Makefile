# $OpenBSD: Makefile,v 1.7 2019/07/12 20:44:11 sthen Exp $

COMMENT= generate SCons/Makefiles from platform-independent input

DISTNAME=	gyp-r1812
REVISION=	1
PKGNAME=	${DISTNAME:S/r/0./g}

CATEGORIES=	devel

HOMEPAGE=	https://bugs.chromium.org/p/gyp/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://deftly.net/

MODULES=	lang/python
MODPY_SETUPTOOLS=	Yes

NO_CCACHE=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
