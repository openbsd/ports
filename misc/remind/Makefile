# $OpenBSD: Makefile,v 1.23 2007/09/15 23:54:17 merdely Exp $

COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-03.00.24
PKGNAME=        remind-3.0.24
CATEGORIES=	misc

MASTER_SITES=	http://www.roaringpenguin.com/files/download/

HOMEPAGE=	http://www.roaringpenguin.com/penguin/open_source_remind.php

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m

# Can run without TK, but most unglamorous without it.
RUN_DEPENDS=	::x11/tk/8.4

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

do-regress:
	cd ${WRKSRC}/tests; sh test-rem

.include <bsd.port.mk>
