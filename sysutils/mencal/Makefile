# $OpenBSD: Makefile,v 1.1.1.1 2002/06/26 02:33:09 kevlo Exp $

COMMENT=	"cal that can use color to display calendar"

DISTNAME=	mencal-2.0
CATEGORIES=	sysutils
NEED_VERSION=	1.531

HOMEPAGE=	http://mencal.kyberdigi.cz/english.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://mencal.kyberdigi.cz/

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mencal ${PREFIX}/bin

.include <bsd.port.mk>
