# $FreeBSD: Makefile,v 1.9 1998/03/13 15:05:20 jfieber Exp $
# $OpenBSD: Makefile,v 1.4 2000/02/15 05:05:21 turan Exp $
#

DISTNAME=	jade-1.2.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.jclark.com/pub/jade/

MAINTAINER=	matthieu@laas.fr

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

# Unfortunately, jade needs libg++
.if !exists(/usr/lib/libstdc++.a)
BROKEN=		Requires OpenBSD 2.1 or later.
.endif

# Shared libraries are currently broken for this port.
# post-install:
# 	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
