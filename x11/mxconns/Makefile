# $OpenBSD: Makefile,v 1.8 2001/04/18 15:01:28 espie Exp $

DISTNAME=	mxconns-3.1.4
CATEGORIES=	x11 security
NEED_VERSION=	1.400
MASTER_SITES=	http://c.home.cern.ch/c/cons/www/mxconns/
EXTRACT_SUFX=	.tgz

MAINTAINER=	David Terrell <dbt@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

USE_MOTIF=	any
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-optim "${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mxconns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/mxconns.man \
		${PREFIX}/man/man1/mxconns.1

.include <bsd.port.mk>
