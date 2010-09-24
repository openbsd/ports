# $OpenBSD: Makefile,v 1.5 2010/09/24 15:37:42 sthen Exp $

COMMENT=		interactive debugger for modperl

MODULES=		cpan
DISTNAME=		Apache-DB-0.14
REVISION=		0
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
