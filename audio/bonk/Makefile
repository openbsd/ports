# $OpenBSD: Makefile,v 1.7 2002/11/13 12:40:35 naddy Exp $

COMMENT=	"lossy/lossless audio coder"

DISTNAME=	bonk-0.6
CATEGORIES=	audio
HOMEPAGE=	http://yoyo.cc.monash.edu.au/~pfh/bonk/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++

MAKE_FLAGS=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' LIBS=-lossaudio
FAKE_FLAGS=	PREFIX='${WRKINST}${PREFIX}' INSTALL='${INSTALL_PROGRAM}'

NO_REGRESS=	Yes

.include <bsd.port.mk>
