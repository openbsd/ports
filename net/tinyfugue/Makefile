# New ports collection makefile for:    tinyfugue
# Version required:     4.0s1
# Date created:         Thu Jul 16 10:23:11 PDT 1998
# Whom:                 downsj@openbsd.org
#
# From FreeBSD:
# Date created:		4 January 1997
# Whom:			mike@binghamton.edu
#
# $OpenBSD: Makefile,v 1.4 1999/10/30 13:07:10 turan Exp $
# $FreeBSD: Makefile,v 1.16 1999/02/16 03:06:21 jseger Exp $
#

BROKEN=		bad packing lists

DISTNAME=	tf-40s1
PKGNAME=	tf-4.0s1
CATEGORIES=	net games
MASTER_SITES=	ftp://tf.tcp.com/pub/tinyfugue/ \
		ftp://ftp.demon.co.uk/pub/games/mud/

MAINTAINER=	ports@openbsd.org

.if defined(PARALLEL_PACKAGE_BUILD)
BROKEN=		tries to cd to directory that do not exist yet
.endif

PLIST_SUB=	DISTNAME=${DISTNAME}

MAKEFILE=	${WRKSRC}/unix/Makefile
MAKE_ENV=	TFVER=${DISTNAME:S/^tf-//}

MAN1=		tf.1

.include <bsd.port.mk>
