# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:47 espie Exp $

COMMENT=		ssh through https proxy tunnel

DISTNAME=		gotthard-1.3
CATEGORIES=		net
MASTER_SITES=		http://www.nazgul.ch/dev/

HOMEPAGE=		http://www.nazgul.ch/dev.html

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

USE_GROFF =		Yes
NO_TEST=		Yes

post-extract:
	@perl -pi -e 's,gotthard.conf,${SYSCONFDIR}/gotthard.conf,g' \
		${WRKDIST}/gotthard.c
		
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gotthard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/gotthard.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gotthard
	${INSTALL_DATA} ${WRKSRC}/gotthard.conf \
		${PREFIX}/share/examples/gotthard

.include <bsd.port.mk>
