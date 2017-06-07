# $OpenBSD: Makefile,v 1.32 2017/06/07 03:08:42 benoit Exp $

COMMENT=	RSS Aggregator Without Delusions Of Grandeur

MODPY_EGG_VERSION=	2.22
DISTNAME=	rawdog-${MODPY_EGG_VERSION}
CATEGORIES=	www news

HOMEPAGE=	http://offog.org/code/rawdog.html
MAINTAINER=	Brian Callahan <bcallah@devio.us>

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
