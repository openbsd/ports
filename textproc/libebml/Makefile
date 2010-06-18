# $OpenBSD: Makefile,v 1.7 2010/06/18 21:34:56 sthen Exp $

COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.0.0
CATEGORIES=	textproc
MASTER_SITES=	http://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	ebml	1.0

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	m stdc++

MAKE_ENV+=	LIBebml_VERSION=${LIBebml_VERSION}
MAKE_FLAGS+=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS+=	prefix=${DESTDIR}${PREFIX}

USE_GMAKE=	Yes

NO_REGRESS=	Yes

WRKSRC=		${WRKDIST}/make/linux

post-extract:
	@perl -pi -e 's/\r\n/\n/;' ${WRKSRC}/Makefile

.include <bsd.port.mk>
