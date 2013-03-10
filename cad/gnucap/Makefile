# $OpenBSD: Makefile,v 1.7 2013/03/10 23:04:44 espie Exp $

COMMENT=		Gnu Circuit Analysis Package

DISTNAME=		gnucap-0.35
REVISION=		0
CATEGORIES=		cad

HOMEPAGE=		http://www.gnucap.org/

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m stdc++ readline termcap

MASTER_SITES=		${HOMEPAGE}dist/ \
			http://www.geda.seul.org/dist/

USE_GMAKE=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/gnucap.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnucap
	${INSTALL_DATA} ${WRKSRC}/man/gnucap-man.pdf \
		${PREFIX}/share/doc/gnucap/gnucap.pdf

do-test:
	cd ${WRKSRC}/examples && ./runall ../src/gnucap

.include <bsd.port.mk>
