# $OpenBSD: Makefile,v 1.14 2015/05/11 20:35:36 jasper Exp $

COMMENT=		perl interface to query for cddb-information

DISTNAME=		CDDB_get-2.28.1
CATEGORIES=		audio

HOMEPAGE=		http://armin.emx.at/cddb/

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		FONKIE

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
