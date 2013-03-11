# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:42 espie Exp $

COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.2.2
CATEGORIES=	textproc
MASTER_SITES=	http://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	ebml	2.1

HOMEPAGE=	http://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m stdc++

MAKE_ENV+=	LIBebml_VERSION=${LIBebml_VERSION}
MAKE_FLAGS+=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS+=	prefix=${DESTDIR}${PREFIX}

USE_GMAKE=	Yes

NO_TEST=	Yes

WRKSRC=		${WRKDIST}/make/linux

post-extract:
	@perl -pi -e 's/\r\n/\n/;' ${WRKSRC}/Makefile

.include <bsd.port.mk>
