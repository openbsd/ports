# $OpenBSD: Makefile,v 1.13 2021/03/17 15:05:50 sthen Exp $

COMMENT=	caching IMAP proxy to be used with webmail clients

DISTNAME=	squirrelmail-20210316_0200-SVN.imap_proxy
PKGNAME=	imapproxy-1.2.8pre2021.02
REVISION=	0
WRKDIST=	${WRKDIR}/squirrelmail.imap_proxy

CATEGORIES=	mail
MASTER_SITES=	http://snapshots.squirrelmail.org/

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
