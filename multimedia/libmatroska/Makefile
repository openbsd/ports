# $OpenBSD: Makefile,v 1.2 2006/08/03 23:15:57 espie Exp $

COMMENT=	"extensible open standard audio/video container library"
DISTNAME=	libmatroska-0.8.0
SHARED_LIBS=	matroska 0.0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/

HOMEPAGE=	http://www.matroska.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS=	ebml::textproc/libebml

NO_REGRESS=	Yes
USE_GMAKE=	Yes

WRKSRC=	${WRKDIST}/make/linux

FAKE_FLAGS+=	LIBmatroska_VERSION=${LIBmatroska_VERSION}
MAKE_FLAGS+=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
