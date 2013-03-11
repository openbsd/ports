# $OpenBSD: Makefile,v 1.9 2013/03/11 11:23:51 espie Exp $

COMMENT=	caching IMAP proxy to be used with webmail clients

VER=		1.2.7
DISTNAME=	squirrelmail-imap_proxy-${VER}
PKGNAME=	imapproxy-${VER}
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=squirrelmail/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.imapproxy.org/

MAINTAINER=	Holger Mauermann <holger@mauermann.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto curses pthread ssl

CONFIGURE_STYLE= gnu

NO_TEST=	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/include/imapproxy.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/imapproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imapproxy
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/README.ssl \
		${PREFIX}/share/doc/imapproxy
	${INSTALL_DATA} ${WRKSRC}/scripts/imapproxy.conf \
		${PREFIX}/share/examples/imapproxy

.include <bsd.port.mk>
