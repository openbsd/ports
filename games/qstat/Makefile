# $OpenBSD: Makefile,v 1.9 2013/03/11 11:07:40 espie Exp $

COMMENT=	displays the status of multi-player Internet Game servers

DISTNAME=	qstat-2.11
REVISION=	0
CATEGORIES=	games

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qstat/}

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qstat
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qstat
	${INSTALL_DATA} ${WRKSRC}/CHANGES.txt ${WRKSRC}/qstatdoc.html \
		${PREFIX}/share/doc/qstat
	${INSTALL_DATA} ${WRKSRC}/qstat.cfg \
		${PREFIX}/share/examples/qstat

.include <bsd.port.mk>
