# Makefile for "remind" port.

# $OpenBSD: Makefile,v 1.8 2000/03/28 07:53:07 kevlo Exp $

DISTNAME=	remind-03.00.21
PKGNAME=        remind-0.3
CATEGORIES=	misc
NEED_VERSION=	1.230
MASTER_SITES = http://www.roaringpenguin.com/

MAINTAINER = kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

# Can run without TK, but most unglamorous without it.
RUN_DEPENDS=	wish8.3::x11/tk/8.3

FAKE=		Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS= --prefix='$${DESTDIR}${PREFIX}'

.include <bsd.port.mk>
