# $FreeBSD: Makefile,v 1.9 1998/03/13 15:05:20 jfieber Exp $
# $OpenBSD: Makefile,v 1.3 2000/02/12 06:30:05 turan Exp $
#

DISTNAME=	jade-1.2.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.jclark.com/pub/jade/

MAINTAINER=	matthieu@laas.fr

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

# Unfortunately, jade needs libg++
.if !exists(/usr/lib/libstdc++.a)
BROKEN=		Requires OpenBSD 2.1 or later.
.endif

# Shared libraries are currently broken for this port.
# post-install:
# 	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
