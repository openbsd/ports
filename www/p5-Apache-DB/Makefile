# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT=		interactive debugger for modperl

MODULES=		cpan
DISTNAME=		Apache-DB-0.14
REVISION=		0
SHARED_ONLY=		Yes
CATEGORIES=		www devel
USE_GROFF =		Yes

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		www/mod_perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/Apache/DB
	${INSTALL_DATA} ${WRKSRC}/perldb.conf ${PREFIX}/share/Apache/DB

.include <bsd.port.mk>	
