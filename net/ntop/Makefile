# Ports makefile for:	ntop
# Version required:	0.4
# Date created:		17 August 1998
# Whom:			Oleg Safiullin <form@OpenBSD.ORG>
#
# $OpenBSD: Makefile,v 1.3 1998/11/29 20:27:11 niklas Exp $
# FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp
#

DISTNAME=	ntop-0.4-src
PKGNAME=	ntop-0.4
CATEGORIES=	net
MASTER_SITES=	http://jake.unipi.it/~deri/ntop/

MAINTAINER=	form@OpenBSD.ORG

WRKSRC=		${WRKDIR}/${PKGNAME}
GNU_CONFIGURE=	yes
ALL_TARGET=
INSTALL_TARGET=	install install-man

MAN8=		ntop.8

post-install:
	strip ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
