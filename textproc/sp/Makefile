# OpenBSD makefile for:	sp
# Version required:	1.2.1
# Date created:		May 21 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1999/10/31 06:36:03 turan Exp $
#

BROKEN=		c++ syntax errors in entmgr_inst.cxx on i386.

DISTNAME=	sp-1.2.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.jclark.com/pub/sp/
MAINTAINER=	angelos@openbsd.org

# The shared libsp only works on post 2.1.x systems.
# shared C++ libraries appear to be broken on post 2.2.1 system too...
#.if exists(/usr/lib/libstdc++.a)
#PLIST=		${PKGDIR}/PLIST-shared
#post-install:
#	${LDCONFIG} -m ${PREFIX}/lib
#.endif

.include <bsd.port.mk>
