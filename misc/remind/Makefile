# Makefile for "remind" port.

# $OpenBSD: Makefile,v 1.15 2001/11/13 22:13:24 espie Exp $

COMMENT=	"scripting language for reminders, with a Tk front end"

DISTNAME=	remind-03.00.22
PKGNAME=        remind-3.0.22
CATEGORIES=	misc
NEED_VERSION=	1.496
MASTER_SITES = 	http://www.roaringpenguin.com/

HOMEPAGE=	http://www.roaringpenguin.com/remind.html

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

# Can run without TK, but most unglamorous without it.
RUN_DEPENDS=	::x11/tk/8.3

CONFIGURE_STYLE=	gnu dest

.include <bsd.port.mk>
