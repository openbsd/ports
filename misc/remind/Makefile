# Makefile for "remind" port.

# $OpenBSD: Makefile,v 1.2 2000/02/04 04:39:59 kevlo Exp $

NEED_VERSION=	1.64

PKGNAME=	remind-0.3
DISTNAME=	remind-03.00.20
EXTRACT_SUFX=	.tgz
CATEGORIES=	misc
MASTER_SITES = http://www.roaringpenguin.com/

MAINTAINER = ports@openbsd.org

# Can run without TK, but most unglamorous without it.
RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
