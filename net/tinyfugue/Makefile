# New ports collection makefile for:	tinyfugue
# Version required:	4.0a7
# Date created:		Thu Jul 16 10:23:11 PDT 1998
# Whom:			downsj@openbsd.org
#
# Originally from FreeBSD:
# Date created:		4 January 1997
# Whom:			mike@binghamton.edu
#
# $OpenBSD: Makefile,v 1.1 1998/07/16 17:30:32 downsj Exp $
#

DISTNAME=	tf-40a7
PKGNAME=	tf-4.0a7
CATEGORIES=	net
MASTER_SITES=	ftp://tf.tcp.com/pub/tinyfugue/ \
		ftp://laurel.actlab.utexas.edu/pub/tinyfugue/

MAINTAINER=	downsj@openbsd.org

MAN1=		tf.1
MAKEFILE=	${WRKSRC}/unix/Makefile
ALL_TARGET=	${MAKE_ARGS} all
INSTALL_TARGET=	${MAKE_ARGS} install

MAKE_ARGS=	TFVER=${DISTNAME:S/^tf-//}

.include <bsd.port.mk>
