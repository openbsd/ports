# $OpenBSD: Makefile,v 1.17 2019/07/12 21:02:28 sthen Exp $

COMMENT=		interactive debugger for modperl

MODULES=		cpan
DISTNAME=		Apache-DB-0.14
REVISION=		6
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
