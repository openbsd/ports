# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:06 naddy Exp $

COMMENT=		perl interface to query for cddb-information

DISTNAME=		CDDB_get-2.28.1
CATEGORIES=		audio

HOMEPAGE=		http://armin.emx.at/cddb/

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*
CPAN_AUTHOR=		FONKIE

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
