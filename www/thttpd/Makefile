# $OpenBSD: Makefile,v 1.14 2003/12/20 12:08:44 jakob Exp $

COMMENT=	"tiny/turbo/throttling HTTP server"

DISTNAME=	thttpd-2.25
PKGNAME=	thttpd-2.25
CATEGORIES=    	www

HOMEPAGE=	http://www.acme.com/software/thttpd/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.acme.com/software/thttpd/

CONFIGURE_STYLE=	gnu

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/thttpd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/thttpd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
