# $OpenBSD: Makefile,v 1.1.1.1 2001/07/12 20:45:10 naddy Exp $

COMMENT=	"lossy/lossless audio coder"

DISTNAME=	bonk-0.5
CATEGORIES=	audio
NEED_VERSION=	1.419
HOMEPAGE=	http://yoyo.cc.monash.edu.au/~pfh/bonk/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' LIBS=-lossaudio
FAKE_FLAGS=	PREFIX='${WRKINST}${PREFIX}' INSTALL='${INSTALL_PROGRAM}'

.include <bsd.port.mk>
