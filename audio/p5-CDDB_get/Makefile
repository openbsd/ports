# $OpenBSD: Makefile,v 1.13 2013/10/11 23:48:05 naddy Exp $

COMMENT=		perl interface to query for cddb-information

DISTNAME=		CDDB_get-2.28
CATEGORIES=		audio

HOMEPAGE=		http://armin.emx.at/cddb/

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		FONKIE

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
