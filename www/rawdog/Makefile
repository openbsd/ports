# $OpenBSD: Makefile,v 1.11 2005/02/17 14:02:15 xsa Exp $

COMMENT=	"RSS Aggregator Without Delusions Of Grandeur"

DISTNAME=	rawdog-2.4
CATEGORIES=	www news

HOMEPAGE=	http://offog.org/code/rawdog.html

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://offog.org/files/

MODULES=	lang/python

RUN_DEPENDS=	${MODPY_EXPAT_DEPENDS}

NO_REGRESS=	Yes

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
