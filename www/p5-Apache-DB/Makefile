# $OpenBSD: Makefile,v 1.14 2015/07/16 23:57:28 ajacoutot Exp $

COMMENT=		interactive debugger for modperl

MODULES=		cpan
DISTNAME=		Apache-DB-0.14
REVISION=		5
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
