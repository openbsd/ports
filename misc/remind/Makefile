# $OpenBSD: Makefile,v 1.28 2010/11/05 08:24:50 sthen Exp $

COMMENT=	scripting language for reminders, with a Tk front end

DISTNAME=	remind-03.01.03
PKGNAME=	remind-3.1.3
REVISION=	0
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
RUN_DEPENDS=	::x11/tk/8.4 \
		::devel/tcllib

USE_GROFF =	Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/remind
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/remind

do-regress:
	cd ${WRKSRC}/tests; sh test-rem

.include <bsd.port.mk>
