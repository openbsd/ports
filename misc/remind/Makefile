# Makefile for "remind" port.

# $OpenBSD: Makefile,v 1.16 2002/10/27 20:55:51 naddy Exp $

COMMENT=	"scripting language for reminders, with a Tk front end"

DISTNAME=	remind-03.00.22
PKGNAME=        remind-3.0.22
CATEGORIES=	misc

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

do-regress:
	cd ${WRKSRC}/tests; sh test-rem

.include <bsd.port.mk>
