# $OpenBSD: Makefile,v 1.18 2003/12/27 23:37:18 jose Exp $

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
RUN_DEPENDS=	::x11/tk/8.4

CONFIGURE_STYLE=	gnu dest

do-regress:
	cd ${WRKSRC}/tests; sh test-rem

.include <bsd.port.mk>
