# $OpenBSD: Makefile,v 1.10 2014/09/16 19:56:09 miod Exp $

# gcc spins compiling d_mos7
NOT_FOR_ARCHS=		m88k

COMMENT=		Gnu Circuit Analysis Package

DISTNAME=		gnucap-0.35
REVISION=		1
CATEGORIES=		cad

HOMEPAGE=		http://www.gnucap.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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

do-test:
	cd ${WRKSRC}/examples && ./runall ../src/gnucap

.include <bsd.port.mk>
