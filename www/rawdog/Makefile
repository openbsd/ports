# $OpenBSD: Makefile,v 1.31 2015/08/25 13:18:28 sthen Exp $

COMMENT=	RSS Aggregator Without Delusions Of Grandeur

MODPY_EGG_VERSION=	2.21
DISTNAME=	rawdog-${MODPY_EGG_VERSION}
CATEGORIES=	www news
REVISION=	0

HOMEPAGE=	http://offog.org/code/rawdog.html

# GPLv2, LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://offog.org/files/

MODULES=	lang/python
MODPY_ADJ_FILES=rawdog

RUN_DEPENDS=	textproc/py-feedparser

NO_TEST=	Yes

DOCDIR=		${PREFIX}/share/doc/rawdog
EXAMPLESDIR=	${PREFIX}/share/examples/rawdog

post-patch:
	sed -i 's,share/man,man,g' ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/config ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/style.css ${EXAMPLESDIR}

.include <bsd.port.mk>
