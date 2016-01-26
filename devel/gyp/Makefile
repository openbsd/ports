# $OpenBSD: Makefile,v 1.6 2016/01/26 13:05:26 sthen Exp $

COMMENT= generate SCons/Makefiles from platform-independent input

DISTNAME=	gyp-r1812
REVISION=	1
PKGNAME=	${DISTNAME:S/r/0./g}

CATEGORIES=	devel

HOMEPAGE=	https://bugs.chromium.org/p/gyp/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://deftly.net/

MODULES=	lang/python
MODPY_SETUPTOOLS=	Yes

NO_CCACHE=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
