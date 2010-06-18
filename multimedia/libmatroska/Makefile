# $OpenBSD: Makefile,v 1.6 2010/06/18 23:25:49 sthen Exp $

COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.0.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	multimedia
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	matroska	1.0

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	m stdc++

LIB_DEPENDS=	ebml.>=1::textproc/libebml

MAKE_ENV+=	LIBmatroska_VERSION=${LIBmatroska_VERSION}
MAKE_FLAGS+=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" LOCALBASE=${LOCALBASE}
FAKE_FLAGS+=	prefix=${DESTDIR}${PREFIX}

USE_GMAKE=	Yes

NO_REGRESS=	Yes

WRKSRC=		${WRKDIST}/make/linux

post-extract:
	@perl -pi -e 's/\r\n/\n/;' ${WRKSRC}/Makefile

.include <bsd.port.mk>
