# OpenBSD makefile for:	leafnode
# Version required:	1.0.2
# Date created:		19 Dec 1997
# Whom:			joey
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/20 02:03:08 joey Exp $
#

DISTNAME=	leafnode-1.0.2
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/news/readers
EXTRACT_SUFX=	.src.elf.tgz

MAINTAINER=	joey@OpenBSD.ORG

MAN8=		fetch.8 leafnode.8 texpire.8

post-install:
	strip ${PREFIX}/sbin/fetch ${PREFIX}/sbin/leafnode ${PREFIX}/sbin/texpire

.include <bsd.port.mk>
