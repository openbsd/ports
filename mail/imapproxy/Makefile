# $OpenBSD: Makefile,v 1.11 2019/07/17 14:46:33 danj Exp $

COMMENT=	caching IMAP proxy to be used with webmail clients

VER=		1.2.7
DISTNAME=	squirrelmail-imap_proxy-${VER}
PKGNAME=	imapproxy-${VER}
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=squirrelmail/}
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

HOMEPAGE=	http://www.imapproxy.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

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
