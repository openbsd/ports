# $OpenBSD: Makefile,v 1.1.1.1 2012/10/13 14:53:11 abieber Exp $

COMMENT= generate SCons/Makefiles from platform-independent input

DISTNAME=	gyp-r1282
PKGNAME= ${DISTNAME:S/r/0./g}

CATEGORIES=	devel

HOMEPAGE=	http://code.google.com/p/gyp/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://deftly.net/

MODULES= lang/python

NO_CCACHE=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
