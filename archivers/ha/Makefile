# $OpenBSD: Makefile,v 1.5 1999/12/15 22:32:10 brad Exp $

DISTNAME=	ha0999
PKGNAME=	ha-0.999b
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

USE_GMAKE=	yes

ALL_TARGET=	ha
MAKEFILE=	makefile.nix
NO_WRKSUBDIR=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ha ${PREFIX}/bin

.include <bsd.port.mk>
