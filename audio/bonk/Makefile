# $OpenBSD: Makefile,v 1.15 2013/03/10 22:55:01 espie Exp $

COMMENT=	lossy/lossless audio coder

DISTNAME=	bonk-0.6
REVISION=	0
CATEGORIES=	audio
HOMEPAGE=	http://www.logarithmic.net/pfh/bonk

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m sndio stdc++

MASTER_SITES=	http://www.logarithmic.net/pfh-files/bonk/

MAKE_FLAGS=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' LIBS=-lsndio
FAKE_FLAGS=	PREFIX='${WRKINST}${PREFIX}' INSTALL='${INSTALL_PROGRAM}'

NO_TEST=	Yes

.include <bsd.port.mk>
