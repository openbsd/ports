# Makefile for "remind" port.

# $OpenBSD: Makefile,v 1.3 2000/02/25 05:01:38 kevlo Exp $

NEED_VERSION=	1.64

PKGNAME=	remind-0.3
DISTNAME=	remind-03.00.20
EXTRACT_SUFX=	.tgz
CATEGORIES=	misc
MASTER_SITES = http://www.roaringpenguin.com/

MAINTAINER = kevlo@openbsd.org

LICENSE_TYPE=           GPL
PERMIT_PACKAGE_CDROM=   YES
PERMIT_PACKAGE_FTP=     YES
PERMIT_DISTFILES_CDROM= YES
PERMIT_DISTFILES_FTP=   YES

# Can run without TK, but most unglamorous without it.
RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
