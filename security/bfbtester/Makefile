# Makefile for:		bfbtester
# Version required:	1.0
# Date created:		29 Jun 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 2000/10/22 14:03:43 espie Exp $

DISTNAME=	bfbtester-1.0

CATEGORIES=	security

MAINTAINER=	Dug Song <dugsong@monkey.org>

MASTER_SITES=	http://my.ispchannel.com/~mheffner/bfbtester/

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

ALL_TARGET=	bfbtester

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bfbtester ${PREFIX}/bin/

.include <bsd.port.mk>
