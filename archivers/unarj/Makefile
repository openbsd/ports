# OpenBSD makefile for:    unarj
# Version required:     2.41
# Date created:         16 Nov 1997
# Whom:                 ejovi

DISTNAME=       unarj
PKGNAME=	unarj-2.41
CATEGORIES=	archivers
MASTER_SITES=	ftp://garbo.uwasa.fi/unix/arcers/
DISTFILES=      unarj241.tar.Z

MAINTAINER=     ejovi@OpenBSD.ORG

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} ${DISTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
