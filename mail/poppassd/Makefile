# OpenBSD makefile for:	poppassd
# Version required:	4.0
# Date Created:		May 16 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/05/17 04:03:24 angelos Exp $
#

DISTNAME=	pwserve-4
PKGNAME=	poppassd-4.0
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/password/

MAINTAINER=	angelos@openbsd.org

EXTRACT_CMD=	/bin/cat
EXTRACT_SUFX=	
EXTRACT_BEFORE_ARGS=	
EXTRACT_AFTER_ARGS=	| /usr/bin/sed -e '1,16d' | ${SH}
WRKSRC=			${WRKDIR}/poppassd
ALL_TARGET=	poppassd
MAN8=		poppassd.8

post-install:
	@ strip ${PREFIX}/libexec/poppassd
	@ ${INSTALL_MAN} ${FILESDIR}/poppassd.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
