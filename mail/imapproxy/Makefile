# $OpenBSD: Makefile,v 1.3 2006/10/18 10:03:50 alek Exp $

COMMENT=	"caching IMAP proxy to be used with webmail clients"

DISTNAME=	up-imapproxy-1.2.3
PKGNAME=	${DISTNAME:S/^up-//}p0
CATEGORIES=	mail

HOMEPAGE=	http://www.imapproxy.org/

MAINTAINER=	Holger Mauermann <holger@mauermann.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/downloads/

WANTLIB=	curses c ssl crypto pthread

CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

pre-build:
	@perl -pi -e "s,!!SYSCONFDIR!!,${SYSCONFDIR}," \
		${WRKSRC}/include/imapproxy.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imapproxy
	${INSTALL_DATA} ${WRKSRC}/scripts/imapproxy.conf \
		${PREFIX}/share/examples/imapproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/imapproxy
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/README.ssl \
		${PREFIX}/share/doc/imapproxy

.include <bsd.port.mk>
