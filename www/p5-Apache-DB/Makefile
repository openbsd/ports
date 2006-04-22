# $OpenBSD: Makefile,v 1.1.1.1 2006/04/22 10:17:22 espie Exp $

COMMENT=		"interactive debugger for modperl"

DISTNAME=		Apache-DB-0.13
PKGNAME=		p5-${DISTNAME}
SHARED_ONLY=		Yes
CATEGORIES=		www devel perl5

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Apache/}

RUN_DEPENDS=		::www/mod_perl
CONFIGURE_STYLE=	perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/Apache/DB
	${INSTALL_DATA} ${WRKSRC}/perldb.conf ${PREFIX}/share/Apache/DB

.include <bsd.port.mk>	
