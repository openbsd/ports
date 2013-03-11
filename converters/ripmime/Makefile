# $OpenBSD: Makefile,v 1.2 2013/03/11 01:30:28 espie Exp $

COMMENT=	extract attachments from MIME encoded emails

DISTNAME=	ripmime-1.4.0.10

CATEGORIES=	converters mail

HOMEPAGE=	http://www.pldaniels.com/ripmime/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}

MODULES=	converters/libiconv

MAKE_FLAGS=	CFLAGS="${CFLAGS}" LIBS="-L${LOCALBASE}/lib -liconv"

# there is a "riptest" target, but the actual test files are missing.
NO_TEST=	Yes

CFLAGS+=	-Wall -I. -I${LOCALBASE}/include -Werror

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ripmime ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/ripmime.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
