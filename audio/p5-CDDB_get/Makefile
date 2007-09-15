# $OpenBSD: Makefile,v 1.8 2007/09/15 21:26:02 simon Exp $

COMMENT=		perl interface to query for cddb-information

DISTNAME=		CDDB_get-2.27
CATEGORIES=		audio

HOMEPAGE=		http://armin.emx.at/cddb/

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		FONKIE

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
