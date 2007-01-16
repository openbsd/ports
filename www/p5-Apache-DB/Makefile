# $OpenBSD: Makefile,v 1.2 2007/01/16 17:52:06 simon Exp $

COMMENT=		"interactive debugger for modperl"

MODULES=		cpan
DISTNAME=		Apache-DB-0.13
SHARED_ONLY=		Yes
CATEGORIES=		www devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::www/mod_perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/Apache/DB
	${INSTALL_DATA} ${WRKSRC}/perldb.conf ${PREFIX}/share/Apache/DB

.include <bsd.port.mk>	
