# $OpenBSD: Makefile,v 1.11 2004/11/21 17:51:44 espie Exp $

COMMENT=	"lossy/lossless audio coder"

DISTNAME=	bonk-0.6
CATEGORIES=	audio
HOMEPAGE=	http://www.logarithmic.net/pfh/bonk

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ossaudio stdc++

MASTER_SITES=	http://www.logarithmic.net/pfh-files/bonk/

MAKE_FLAGS=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' LIBS=-lossaudio
FAKE_FLAGS=	PREFIX='${WRKINST}${PREFIX}' INSTALL='${INSTALL_PROGRAM}'

NO_REGRESS=	Yes

.include <bsd.port.mk>
