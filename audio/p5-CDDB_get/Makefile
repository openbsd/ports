# $OpenBSD: Makefile,v 1.6 2004/10/08 08:22:28 xsa Exp $

COMMENT=		"perl interface to query for cddb-information"

DISTNAME=		CDDB_get-2.23
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		audio perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../by-authors/id/F/FO/FONKIE/}

HOMEPAGE=		http://armin.emx.at/cddb/

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
