# $FreeBSD: Makefile,v 1.9 1998/03/13 15:05:20 jfieber Exp $
# $OpenBSD: Makefile,v 1.6 2000/06/10 00:02:38 espie Exp $
#

DISTNAME=	jade-1.2.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.jclark.com/pub/jade/

MAINTAINER=	matthieu@laas.fr

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Unfortunately, jade needs libg++
.if !exists(/usr/lib/libstdc++.a)
BROKEN=		Requires OpenBSD 2.1 or later.
.endif

FAKE_FLAGS=PREFIX=${PREFIX}
# Shared libraries are currently broken for this port.
# post-install:
# 	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
