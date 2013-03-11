# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:44 espie Exp $

COMMENT=		interactive debugger for modperl

MODULES=		cpan
DISTNAME=		Apache-DB-0.14
REVISION=		3
SHARED_ONLY=		Yes
CATEGORIES=		www devel
USE_GROFF =		Yes

# Artistic
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

RUN_DEPENDS=		www/mod_perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/Apache/DB
	${INSTALL_DATA} ${WRKSRC}/perldb.conf \
		${PREFIX}/share/Apache/DB/perldb.conf.dist

.include <bsd.port.mk>	
