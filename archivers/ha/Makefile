# $OpenBSD: Makefile,v 1.7 2000/02/12 08:02:08 turan Exp $

DISTNAME=	ha0999
PKGNAME=	ha-0.999b
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_GMAKE=	yes

ALL_TARGET=	ha
MAKEFILE=	makefile.nix
NEED_VERSION=	1.191
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ha ${PREFIX}/bin

.include <bsd.port.mk>
