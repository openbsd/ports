# New ports collection makefile for:	jade
# Version required:	1.1
# Date created:		June 19, 1997
# Whom:			jfieber
#
# $FreeBSD: Makefile,v 1.9 1998/03/13 15:05:20 jfieber Exp $
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/05 09:54:22 matthieu Exp $
#

DISTNAME=	jade1_1
PKGNAME=	jade-1.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.jclark.com/pub/jade/
EXTRACT_SUFX=	.zip

MAINTAINER=	matthieu@laas.fr

BUILD_DEPENDS=	unzip:${PORTSDIR}/archivers/unzip

EXTRACT_CMD=	unzip
EXTRACT_BEFORE_ARGS=	-a -U -qq
NO_WRKSUBDIR=	yes

# Unfortunately, jade needs libg++ 2.7
.if !exists(/usr/lib/libstdc++.a)
BROKEN=		Requires OpenBSD 2.1 or later.
.endif

# Shared libraries are currently broken for this port.
# post-install:
# 	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
