# $OpenBSD: Makefile,v 1.3 2013/08/07 21:31:36 naddy Exp $

COMMENT= generate SCons/Makefiles from platform-independent input

DISTNAME=	gyp-r1282
PKGNAME= ${DISTNAME:S/r/0./g}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://code.google.com/p/gyp/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://deftly.net/

MODULES= lang/python

NO_CCACHE=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
