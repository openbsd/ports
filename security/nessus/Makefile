# Makefile for:		nessus
# Version required:	990201
# Date created:		18 Jan 1999
# Whom:			dugsong@monkey.org
# Related URLs:		http://www.nessus.org/
#
# $OpenBSD: Makefile,v 1.2 1999/02/07 23:11:33 dugsong Exp $

DISTNAME=	nessus-990201

CATEGORIES=	security

MASTER_SITES=	http://www.nessus.org/ \
		http://www.worldnet.fr/~deraison/ \
		ftp://ftp.gwdg.de/pub/linux/misc/nessus/

EXTRACT_SUFX=	.tgz

MAINTAINER=	dugsong@monkey.org

LIB_DEPENDS	gtk\\.1\\.:${PORTSDIR}/x11/gtk+

GNU_CONFIGURE=	yes

MAN1=		nessus.1

.include <bsd.port.mk>
