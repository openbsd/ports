# $OpenBSD: Makefile,v 1.18 2007/02/24 21:10:52 aanriot Exp $

COMMENT=	"tiny/turbo/throttling HTTP server"

DISTNAME=	thttpd-2.25b
PKGNAME=	${DISTNAME}p1
CATEGORIES=    	www

HOMEPAGE=	http://www.acme.com/software/thttpd/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.acme.com/software/thttpd/

CONFIGURE_STYLE=	gnu

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/thttpd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/thttpd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
