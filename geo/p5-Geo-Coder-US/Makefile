# $OpenBSD: Makefile,v 1.3 2010/10/23 11:59:58 jasper Exp $

COMMENT=	geocode any US address
MODULES=	cpan
DISTNAME=	Geo-Coder-US-1.00
REVISION=	0
CATEGORIES=	geo
USE_GROFF =	Yes

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	::geo/p5-Geo-Fips55 \
		::geo/p5-Geo-StreetAddress-US \
		::geo/p5-Geo-TigerLine

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
