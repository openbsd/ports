# Makefile for:		bfbtester
# Version required:	1.0
# Date created:		29 Jun 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 2000/06/30 03:33:51 dugsong Exp $

DISTNAME=	bfbtester-1.0

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	http://my.ispchannel.com/~mheffner/bfbtester/

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

ALL_TARGET=	bfbtester

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bfbtester ${PREFIX}/bin/

.include <bsd.port.mk>
