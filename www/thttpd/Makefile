# $OpenBSD: Makefile,v 1.6 2000/11/18 09:20:11 jakob Exp $

DISTNAME=		thttpd-2.20b
CATEGORIES=     	www
NEED_VERSION=		1.305

HOMEPAGE=		http://www.acme.com/software/thttpd/

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.acme.com/software/thttpd/

CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/thttpd   ${PREFIX}/sbin
	${INSTALL_MAN}     ${WRKSRC}/thttpd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
