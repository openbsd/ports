# $OpenBSD: Makefile,v 1.10 2001/03/03 19:26:12 danh Exp $
#

DISTNAME=	slirp-1.0c
CATEGORIES=	net
NEED_VERSION=	1.305
MASTER_SITES=	ftp://blitzen.canberra.edu.au/pub/slirp/ \
		ftp://freedom.wit.com/misc4/danjo/SLiRP/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/slirp-1.0c/src
CONFIGURE_STYLE=	simple

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slirp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/slirp.man ${PREFIX}/man/man1/slirp.1

.include <bsd.port.mk>
