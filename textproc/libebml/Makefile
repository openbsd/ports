# $OpenBSD: Makefile,v 1.3 2007/01/04 20:56:43 steven Exp $

COMMENT=	"Extensible Binary Meta Language library"
DISTNAME=	libebml-0.7.7
SHARED_LIBS=	ebml 0.0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	textproc
MASTER_SITES=	http://dl.matroska.org/downloads/libebml/

HOMEPAGE=	http://www.matroska.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

WRKSRC=	${WRKDIST}/make/linux

FAKE_FLAGS+=	LIBebml_VERSION=${LIBebml_VERSION}
MAKE_FLAGS+=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
		LIBebml_VERSION=${LIBebml_VERSION}

.include <bsd.port.mk>
