# $OpenBSD: Makefile,v 1.4 2000/06/02 09:46:02 kevlo Exp $

DISTNAME=       webmin-0.79
CATEGORIES=     sysutils
FAKE=No
MASTER_SITES=   http://www.webmin.com/webmin/download/

MAINTAINER=     kevlo@openbsd.org

LICENSE_TYPE=           BSD
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
