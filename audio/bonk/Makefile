# $OpenBSD: Makefile,v 1.10 2004/09/17 11:44:56 naddy Exp $

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

MASTER_SITES=	http://www.logarithmic.net/pfh-files/bonk/

MAKE_FLAGS=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' LIBS=-lossaudio
FAKE_FLAGS=	PREFIX='${WRKINST}${PREFIX}' INSTALL='${INSTALL_PROGRAM}'

NO_REGRESS=	Yes

.include <bsd.port.mk>
