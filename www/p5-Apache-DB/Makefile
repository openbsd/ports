# $OpenBSD: Makefile,v 1.19 2021/03/02 15:25:38 sthen Exp $

COMMENT=		interactive debugger for modperl

MODULES=		cpan
DISTNAME=		Apache-DB-0.18
CATEGORIES=		www devel

# Artistic
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

RUN_DEPENDS=		www/ap2-mod_perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/Apache/DB
	${INSTALL_DATA} ${WRKSRC}/perldb.conf \
		${PREFIX}/share/Apache/DB/perldb.conf.dist

.include <bsd.port.mk>	
