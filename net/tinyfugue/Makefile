# New ports collection makefile for:    tinyfugue
# Version required:     4.0s1
# Date created:         Thu Jul 16 10:23:11 PDT 1998
# Whom:                 downsj@openbsd.org
#
# From FreeBSD:
# Date created:		4 January 1997
# Whom:			mike@binghamton.edu
#
# $OpenBSD: Makefile,v 1.6 2000/02/12 08:02:28 turan Exp $
# $FreeBSD: Makefile,v 1.16 1999/02/16 03:06:21 jseger Exp $
#

DISTNAME=	tf-40s1
PKGNAME=	tf-4.0s1
CATEGORIES=	net games
MASTER_SITES=	ftp://tf.tcp.com/pub/tinyfugue/ \
		ftp://ftp.demon.co.uk/pub/games/mud/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MAKEFILE=	${WRKSRC}/unix/Makefile
MAKE_ENV=	TFVER=${DISTNAME:S/^tf-//}

.include <bsd.port.mk>
