# $OpenBSD: Makefile,v 1.6 2000/02/10 23:14:27 espie Exp $

DISTNAME=	ha0999
PKGNAME=	ha-0.999b
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

USE_GMAKE=	yes

ALL_TARGET=	ha
MAKEFILE=	makefile.nix
NEED_VERSION=	1.191
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ha ${PREFIX}/bin

.include <bsd.port.mk>
