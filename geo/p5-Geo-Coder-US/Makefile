# $OpenBSD: Makefile,v 1.2 2010/10/18 18:13:12 espie Exp $

COMMENT=	geocode any US address
MODULES=	cpan
DISTNAME=	Geo-Coder-US-1.00
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Geo-Coder-US
	${INSTALL_SCRIPT} ${WRKSRC}/eg/*.pl \
		${PREFIX}/share/examples/p5-Geo-Coder-US

.include <bsd.port.mk>
