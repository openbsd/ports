# $OpenBSD: Makefile,v 1.11 2002/05/05 15:07:18 espie Exp $

COMMENT=	"Web-based interface for system administration for Unix"
BROKEN=		"Serious security concerns"

DISTNAME=       webmin-0.81
CATEGORIES=     sysutils
NEED_VERSION=	1.504
FAKE=No
MASTER_SITES=	${HOMEPAGE}/download/

HOMEPAGE=	http://www.webmin.com/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=       Yes
IS_INTERACTIVE= Yes
NO_PACKAGE=     "interactive port"

do-install:
	sh ${WRKSRC}/setup.sh

.include <bsd.port.mk>
