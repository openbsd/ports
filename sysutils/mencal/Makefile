# $OpenBSD: Makefile,v 1.3 2003/06/10 06:32:56 kevlo Exp $

COMMENT=	"cal that can use color to display calendar"

DISTNAME=	mencal-2.2
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
