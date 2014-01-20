# $OpenBSD: Makefile,v 1.4 2014/01/20 19:40:02 abieber Exp $

COMMENT= generate SCons/Makefiles from platform-independent input

DISTNAME=	gyp-r1812
PKGNAME= ${DISTNAME:S/r/0./g}

CATEGORIES=	devel

HOMEPAGE=	https://code.google.com/p/gyp/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://deftly.net/

MODULES=	lang/python
MODPY_SETUPTOOLS=	Yes

NO_CCACHE=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
