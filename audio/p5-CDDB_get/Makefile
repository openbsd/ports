# $OpenBSD: Makefile,v 1.5 2003/09/23 05:09:06 jolan Exp $

COMMENT=		"perl interface to query for cddb-information"

DISTNAME=		CDDB_get-2.23
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		audio perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../by-authors/id/F/FO/FONKIE/}

HOMEPAGE=		http://armin.emx.at/cddb/

MAINTAINER=		Dan Weeks <danimal@danimal.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
