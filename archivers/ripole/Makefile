# $OpenBSD: Makefile,v 1.8 2017/11/15 21:28:05 sthen Exp $

COMMENT=		extract attachments from OLE2 data files

DISTNAME=		ripole-0.2.2
REVISION=		0

CATEGORIES=		archivers

HOMEPAGE=		http://www.pldaniels.com/ripole/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

ALL_TARGET=		default
NO_TEST=		Yes

MAKE_ENV=		CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ripole ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ripole
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ripole

.include <bsd.port.mk>
