# $OpenBSD: Makefile,v 1.8 2001/05/06 03:59:13 lebel Exp $

COMMENT=	"Web-based interface for system administration for Unix"

DISTNAME=       webmin-0.81
CATEGORIES=     sysutils
NEED_VERSION=	1.402
FAKE=No
MASTER_SITES=   http://www.webmin.com/webmin/download/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

HOMEPAGE=	http://www.webmin.com/webmin/

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
