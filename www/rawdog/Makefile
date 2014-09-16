# $OpenBSD: Makefile,v 1.28 2014/09/16 15:19:25 bcallah Exp $

COMMENT=	RSS Aggregator Without Delusions Of Grandeur

MODPY_EGG_VERSION=	2.20
DISTNAME=	rawdog-${MODPY_EGG_VERSION}
CATEGORIES=	www news

HOMEPAGE=	http://offog.org/code/rawdog.html

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2, LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://offog.org/files/

MODULES=	lang/python

RUN_DEPENDS=	textproc/py-feedparser

USE_GROFF=	Yes
NO_TEST=	Yes

DOCDIR=		${PREFIX}/share/doc/rawdog
EXAMPLESDIR=	${PREFIX}/share/examples/rawdog

do-configure:
	@perl -pi -e \
		's,/usr/bin/env python,/usr/bin/env python${MODPY_VERSION},g' \
		${WRKSRC}/rawdog

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/config ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/style.css ${EXAMPLESDIR}

.include <bsd.port.mk>
