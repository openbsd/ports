# $OpenBSD: Makefile,v 1.27 2019/07/14 02:16:50 naddy Exp $

COMMENT=	extract files from ARJ archives

DISTNAME=	unarj-2.43
REVISION=	3
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

# Restrictive
PERMIT_PACKAGE=		No
PERMIT_DISTFILES=	No

WANTLIB=		c

MAKE_ENV=	CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unarj
	cd ${WRKSRC}; ${INSTALL_PROGRAM} unarj ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_DATA} unarj.doc technote.doc ${PREFIX}/share/doc/unarj

NO_TEST=	Yes

.include <bsd.port.mk>
