# Makefile for "remind" port.

# $OpenBSD: Makefile,v 1.11 2000/10/22 14:03:32 espie Exp $

DISTNAME=	remind-03.00.22
PKGNAME=        remind-3.0.22
CATEGORIES=	misc
NEED_VERSION=	1.301
MASTER_SITES = 	http://www.roaringpenguin.com/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

# Can run without TK, but most unglamorous without it.
RUN_DEPENDS=	wish8.3::x11/tk/8.3

CONFIGURE_STYLE=	gnu dest

.include <bsd.port.mk>
