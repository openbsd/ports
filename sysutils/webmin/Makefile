# $OpenBSD: Makefile,v 1.1.1.1 2000/03/02 01:24:40 kevlo Exp $

DISTNAME=       webmin-0.78
CATEGORIES=     sysutils
MASTER_SITES=   http://www.webmin.com/webmin/download/

MAINTAINER=     kevlo@openbsd.org

LICENSE_TYPE=           BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=       Yes
IS_INTERACTIVE= Yes

do-install:
	sh ${WRKSRC}/setup.sh

.include <bsd.port.mk>
