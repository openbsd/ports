# $OpenBSD: Makefile,v 1.11 2002/03/21 21:25:55 espie Exp $

COMMENT=	"interactive X11 proxy with selective X request replacement"

DISTNAME=	mxconns-3.1.4
CATEGORIES=	x11 security
NEED_VERSION=	1.515
MASTER_SITES=	http://c.home.cern.ch/c/cons/www/mxconns/
EXTRACT_SUFX=	.tgz

MAINTAINER=	David Terrell <dbt@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_MOTIF=	any
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-optim "${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mxconns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/mxconns.man \
		${PREFIX}/man/man1/mxconns.1

.include <bsd.port.mk>
