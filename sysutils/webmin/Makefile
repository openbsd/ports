# $OpenBSD: Makefile,v 1.6 2000/10/05 01:03:03 kevlo Exp $

DISTNAME=       webmin-0.81
CATEGORIES=     sysutils
NEED_VERSION=	1.338
FAKE=No
MASTER_SITES=   http://www.webmin.com/webmin/download/

MAINTAINER=     kevlo@openbsd.org

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
