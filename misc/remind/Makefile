# Makefile for "remind" port.

# $OpenBSD: Makefile,v 1.4 2000/03/05 18:30:36 espie Exp $


PKGNAME=	remind-0.3
DISTNAME=	remind-03.00.20
EXTRACT_SUFX=	.tgz
CATEGORIES=	misc
NEED_VERSION=	1.223
MASTER_SITES = http://www.roaringpenguin.com/

MAINTAINER = kevlo@openbsd.org

LICENSE_TYPE=           GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

# Can run without TK, but most unglamorous without it.
RUN_DEPENDS=	wish8.0:x11/tk80

GNU_CONFIGURE=	Yes

.include <bsd.port.mk>
