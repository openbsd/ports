# $OpenBSD: Makefile,v 1.17 2021/10/18 22:20:15 tb Exp $

COMMENT=	caching IMAP proxy to be used with webmail clients

DISTNAME=	squirrelmail-20210316_0200-SVN.imap_proxy
PKGNAME=	imapproxy-1.2.8pre2021.02
REVISION=	3
WRKDIST=	${WRKDIR}/squirrelmail.imap_proxy

CATEGORIES=	mail
# old svn tgz are removed
#MASTER_SITES=	http://snapshots.squirrelmail.org/
MASTER_SITES=	https://spacehopper.org/mirrors/

HOMEPAGE=	http://www.imapproxy.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto curses pthread ssl

CONFIGURE_STYLE= gnu
DEBUG_PACKAGES=	${BUILD_PACKAGES}

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
