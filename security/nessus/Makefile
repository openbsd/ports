# $OpenBSD: Makefile,v 1.3 1999/03/17 02:55:28 brad Exp $

DISTNAME=	nessus-990201
CATEGORIES=	security
MASTER_SITES=	http://www.nessus.org/ \
		http://www.worldnet.fr/~deraison/ \
		ftp://ftp.gwdg.de/pub/linux/misc/nessus/

EXTRACT_SUFX=	.tgz

MAINTAINER=	dugsong@monkey.org

LIB_DEPENDS	gtk:${PORTSDIR}/x11/gtk+

GNU_CONFIGURE=	yes

MAN1=		nessus.1

.include <bsd.port.mk>
