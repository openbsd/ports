# $OpenBSD: Makefile,v 1.6 2000/10/22 22:52:34 dbt Exp $

DISTNAME=	mxconns-3.1.4
CATEGORIES=	x11 security
NEED_VERSION=	1.305
MASTER_SITES=	http://c.home.cern.ch/c/cons/www/mxconns/

MAINTAINER=	David Terrell <dbt@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    Xm.1::x11/lesstif

CONFIGURE_STYLE=	simple
EXTRACT_SUFX=   .tgz

do-install:
	install -c -o root -g bin -m 555 ${WRKBUILD}/mxconns ${PREFIX}/bin/mxconns
	install -c -o root -g bin -m 444 ${WRKBUILD}/mxconns.man \
		${PREFIX}/man/man1/mxconns.1

.include <bsd.port.mk>
