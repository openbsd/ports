# $OpenBSD: Makefile,v 1.1.1.1 2007/09/15 13:53:05 jolan Exp $

COMMENT=	geocode any US address
MODULES=	cpan
DISTNAME=	Geo-Coder-US-1.00
CATEGORIES=	geo

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	::geo/p5-Geo-Fips55 \
		::geo/p5-Geo-StreetAddress-US \
		::geo/p5-Geo-TigerLine

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Geo-Coder-US
	${INSTALL_SCRIPT} ${WRKSRC}/eg/*.pl \
		${PREFIX}/share/examples/p5-Geo-Coder-US

.include <bsd.port.mk>
