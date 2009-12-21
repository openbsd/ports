# $OpenBSD: Makefile,v 1.13 2009/12/21 20:17:29 naddy Exp $

COMMENT=	lossy/lossless audio coder

DISTNAME=	bonk-0.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
HOMEPAGE=	http://www.logarithmic.net/pfh/bonk

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m sndio stdc++

MASTER_SITES=	http://www.logarithmic.net/pfh-files/bonk/

MAKE_FLAGS=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' LIBS=-lsndio
FAKE_FLAGS=	PREFIX='${WRKINST}${PREFIX}' INSTALL='${INSTALL_PROGRAM}'

NO_REGRESS=	Yes

.include <bsd.port.mk>
