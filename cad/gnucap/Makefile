# $OpenBSD: Makefile,v 1.1.1.1 2006/12/30 15:42:53 steven Exp $

COMMENT=		"Gnu Circuit Analysis Package"

DISTNAME=		gnucap-0.35
CATEGORIES=		cad

HOMEPAGE=		http://www.gnucap.org/

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ readline termcap

MASTER_SITES=		${HOMEPAGE}dist/ \
			http://www.geda.seul.org/dist/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/gnucap.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnucap
	${INSTALL_DATA} ${WRKSRC}/man/gnucap-man.pdf \
		${PREFIX}/share/doc/gnucap/gnucap.pdf

do-regress:
	cd ${WRKSRC}/examples && ./runall ../src/gnucap

.include <bsd.port.mk>
