# OpenBSD makefile for:    unarj
# Version required:     2.41
# Date created:         16 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.3 1998/10/06 20:54:59 marc Exp $
#

DISTNAME=       unarj
PKGNAME=	unarj-2.41
CATEGORIES=	archivers
MASTER_SITES=	ftp://garbo.uwasa.fi/unix/arcers/ \
		ftp://ftp.kiarchive.ru/pub/unix/arcers/
DISTFILES=      unarj241.tar.Z

MAINTAINER=     joey@OpenBSD.ORG

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} ${DISTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
