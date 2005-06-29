# $OpenBSD: Makefile,v 1.21 2005/06/29 21:54:12 avsm Exp $

COMMENT=	"scripting language for reminders, with a Tk front end"

DISTNAME=	remind-03.00.23
PKGNAME=        remind-3.0.23
CATEGORIES=	misc

MASTER_SITES=	http://www.roaringpenguin.com/penguin/

HOMEPAGE=	http://www.roaringpenguin.com/penguin/open_source_remind.php

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m

# Can run without TK, but most unglamorous without it.
RUN_DEPENDS=	::x11/tk/8.4

CONFIGURE_STYLE=	gnu dest

do-regress:
	cd ${WRKSRC}/tests; sh test-rem

.include <bsd.port.mk>
