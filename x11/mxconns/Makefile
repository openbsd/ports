# $OpenBSD: Makefile,v 1.2 2000/03/19 16:04:21 espie Exp $

DISTNAME=	mxconns-3.1.4
CATEGORIES=	x11 security
MASTER_SITES=	http://home.cern.ch/c/cons/www/mxconns/

MAINTAINER=	dbt@meat.net

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    Xm.1:x11/lesstif

HAS_CONFIGURE=  yes
EXTRACT_SUFX=   .tgz
FAKE=Yes

do-install:
	install -c -o root -g bin -m 555 ${WRKBUILD}/mxconns ${PREFIX}/bin/mxconns
	install -c -o root -g bin -m 444 ${WRKBUILD}/mxconns.man \
		${PREFIX}/man/man1/mxconns.1

.include <bsd.port.mk>
