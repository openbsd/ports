# $OpenBSD: Makefile,v 1.5 2009/06/01 18:39:51 wcmaier Exp $

COMMENT=		Jabber client for text terminals

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		cjc-${MODPY_EGG_VERSION}
CATEGORIES=		net

HOMEPAGE=		http://cjc.jajcus.net/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}downloads/

MODULES=	lang/python

RUN_DEPENDS=	:py-xmpp-*:net/py-xmpp

NO_REGRESS=	Yes

post-extract:
	@cp ${FILESDIR}/setup.py ${WRKSRC}

post-install:
	@sed -e '1s|.*|#!${MODPY_BIN}|; s|BASE_DIR|${LOCALBASE}/share/cjc|' \
	    ${WRKSRC}/cjc.in > ${WRKSRC}/cjc.out
	${INSTALL_SCRIPT} ${WRKSRC}/cjc.out ${PREFIX}/bin/cjc
	${INSTALL_DATA_DIR} ${PREFIX}/share/cjc/plugins
	${INSTALL_DATA} ${WRKSRC}/plugins/*py ${PREFIX}/share/cjc/plugins
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cjc
	${INSTALL_DATA} ${WRKSRC}/doc/manual.html ${PREFIX}/share/doc/cjc

.include <bsd.port.mk>
