# $OpenBSD: Makefile,v 1.5 2019/07/12 21:02:29 sthen Exp $

COMMENT=	very fast web log analyzer

DISTNAME=	visitors-0.7
REVISION=	0
CATEGORIES=	www sysutils

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=	c

HOMEPAGE=	http://www.hping.org/visitors/
MASTER_SITES=	${HOMEPAGE}

WRKDIST=${WRKDIR}/${DISTNAME:S/-/_/}

NO_TEST=	Yes

MAKE_ENV+=	DEBUG=''

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/visitors 	${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/visitors
	${INSTALL_DATA} ${WRKSRC}/doc.html ${PREFIX}/share/doc/visitors/

.include <bsd.port.mk>
