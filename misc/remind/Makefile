# Makefile for "remind" port.

# $OpenBSD: Makefile,v 1.10 2000/07/20 05:27:20 kevlo Exp $

DISTNAME=	remind-03.00.22
PKGNAME=        remind-3.0.22
CATEGORIES=	misc
NEED_VERSION=	1.301
MASTER_SITES = 	http://www.roaringpenguin.com/

MAINTAINER = 	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

# Can run without TK, but most unglamorous without it.
RUN_DEPENDS=	wish8.3::x11/tk/8.3

CONFIGURE_STYLE=	gnu dest

.include <bsd.port.mk>
