# $OpenBSD: Makefile,v 1.13 2016/01/12 13:19:37 ajacoutot Exp $

COMMENT=		Jabber client for text terminals

MODPY_EGG_VERSION=	1.2.1
DISTNAME=		cjc-${MODPY_EGG_VERSION}
CATEGORIES=		net
REVISION=		0

HOMEPAGE=		http://cjc.jajcus.net/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://cloud.github.com/downloads/Jajcus/cjc/

MODULES=	lang/python

RUN_DEPENDS=	net/py-xmpp

NO_TEST=	Yes

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
