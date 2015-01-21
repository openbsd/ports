# $OpenBSD: Makefile,v 1.13 2015/01/21 14:42:32 sthen Exp $

COMMENT=		interactive debugger for modperl

MODULES=		cpan
DISTNAME=		Apache-DB-0.14
REVISION=		4
SHARED_ONLY=		Yes
CATEGORIES=		www devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

RUN_DEPENDS=		www/mod_perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/Apache/DB
	${INSTALL_DATA} ${WRKSRC}/perldb.conf \
		${PREFIX}/share/Apache/DB/perldb.conf.dist

.include <bsd.port.mk>	
