# $OpenBSD: Makefile,v 1.15 2016/03/20 19:57:13 naddy Exp $

COMMENT=		interactive debugger for modperl

MODULES=		cpan
DISTNAME=		Apache-DB-0.14
REVISION=		5
CATEGORIES=		www devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c perl

RUN_DEPENDS=		www/mod_perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/Apache/DB
	${INSTALL_DATA} ${WRKSRC}/perldb.conf \
		${PREFIX}/share/Apache/DB/perldb.conf.dist

.include <bsd.port.mk>	
