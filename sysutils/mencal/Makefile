# $OpenBSD: Makefile,v 1.5 2004/11/30 03:16:45 kevlo Exp $

COMMENT=	"cal that can use color to display calendar"

DISTNAME=	mencal-2.3
CATEGORIES=	sysutils

HOMEPAGE=	http://mencal.kyberdigi.cz/english.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://mencal.kyberdigi.cz/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mencal ${PREFIX}/bin

.include <bsd.port.mk>
