# OpenBSD makefile for:	sp
# Version required:	1.2.1
# Date created:		May 21 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.8 2000/06/10 00:02:38 espie Exp $
#

DISTNAME=	sp-1.2.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.jclark.com/pub/sp/
MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=PREFIX=${PREFIX}

# The shared libsp only works on post 2.1.x systems.
# shared C++ libraries appear to be broken on post 2.2.1 system too...
#.if exists(/usr/lib/libstdc++.a)
#PLIST=		${PKGDIR}/PLIST-shared
#post-install:
#	${LDCONFIG} -m ${PREFIX}/lib
#.endif

.include <bsd.port.mk>
