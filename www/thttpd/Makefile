# $OpenBSD: Makefile,v 1.1.1.1 2000/07/20 10:05:37 jakob Exp $

DISTNAME=		thttpd-2.19
CATEGORIES=     	www
NEED_VERSION=		1.302

HOMEPAGE=		http://www.acme.com/software/thttpd/

MAINTAINER=		jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.acme.com/software/thttpd/

CONFIGURE_STYLE=	autoconf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/thttpd   ${PREFIX}/sbin
	${INSTALL_MAN}     ${WRKSRC}/thttpd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
