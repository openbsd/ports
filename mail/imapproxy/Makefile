COMMENT=	connection-caching IMAP proxy for webmail clients etc.

DISTNAME=	squirrelmail-20221212_0200-SVN.imap_proxy
# from date of last commit; XXX pkg_add sort order is strange and imapproxy-1.2.8pre2021.02p2
# sorts later than imapproxy-1.2.8pre20220524
PKGNAME=	imapproxy-1.2.8pre2022.05
WRKDIST=	${WRKDIR}/squirrelmail.imap_proxy

CATEGORIES=	mail
PORTROACH=	site:https://snapshots.squirrelmail.org/
SITES=		https://spacehopper.org/mirrors/

HOMEPAGE=	https://squirrelmail.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge() and unveil()
WANTLIB=	c crypto curses pthread ssl

CONFIGURE_STYLE= gnu
DEBUG_PACKAGES=	${BUILD_PACKAGES}

NO_TEST=	Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/include/imapproxy.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/imapproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imapproxy
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/README.ssl \
		${PREFIX}/share/doc/imapproxy
	${INSTALL_DATA} ${WRKSRC}/scripts/imapproxy.conf \
		${PREFIX}/share/examples/imapproxy

.include <bsd.port.mk>
