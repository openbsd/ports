# $OpenBSD: Makefile,v 1.7 2019/07/12 20:43:52 sthen Exp $

COMMENT=	extract attachments from MIME encoded emails

DISTNAME=	ripmime-1.4.0.10
REVISION=	0

CATEGORIES=	converters mail

HOMEPAGE=	https://pldaniels.com/ripmime/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	converters/libiconv

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" \
		LIBS="-L${LOCALBASE}/lib -liconv"

# there is a "riptest" target, but the actual test files are missing.
NO_TEST=	Yes

CFLAGS+=	-Wall -I. -I${LOCALBASE}/include

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ripmime ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/ripmime.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
