# $OpenBSD: Makefile,v 1.2 2002/10/28 19:53:44 naddy Exp $

COMMENT=	"cal that can use color to display calendar"

DISTNAME=	mencal-2.0
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

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mencal ${PREFIX}/bin

.include <bsd.port.mk>
