# New ports collection makefile for:    tinyfugue
# Version required:     4.0s1
# Date created:         Thu Jul 16 10:23:11 PDT 1998
# Whom:                 downsj@openbsd.org
#
# From FreeBSD:
# Date created:		4 January 1997
# Whom:			mike@binghamton.edu
#
# $OpenBSD: Makefile,v 1.10 2000/04/09 17:37:35 espie Exp $
# $FreeBSD: Makefile,v 1.16 1999/02/16 03:06:21 jseger Exp $
#

DISTNAME=	tf-40s1
PKGNAME=	tf-4.0s1
CATEGORIES=	net games
NEED_VERSION=	1.210
FAKE=No
MASTER_SITES=	ftp://tf.tcp.com/pub/tinyfugue/ \
		ftp://ftp.demon.co.uk/pub/games/mud/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MAKE_FILE=	${WRKSRC}/unix/Makefile
MAKE_ENV=	TFVER=${DISTNAME:S/^tf-//}

.include <bsd.port.mk>
