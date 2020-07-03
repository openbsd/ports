# $OpenBSD: Makefile,v 1.40 2020/07/03 21:45:37 sthen Exp $

COMMENT=	event-driven IRC-client module

DISTNAME=	POE-Component-IRC-6.90
CATEGORIES=	net
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes

RUN_DEPENDS=	archivers/p5-POE-Filter-Zlib>=1.96 \
		devel/p5-POE>=1.311 \
		devel/p5-POE-Component-Syndicator \
		net/p5-IRC-Utils>=0.12 \
		net/p5-POE-Component-Client-DNS>=0.99 \
		net/p5-POE-Filter-IRCD>=2.42 \
		net/p5-Socket6

# Not listed in PREREQ_PM, but needed for SSL connections.
RUN_DEPENDS+=	security/p5-POE-Component-SSLify

TEST_DEPENDS=	devel/p5-Test-Differences>=0.61

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-POE-Component-IRC
	${INSTALL_DATA} ${WRKSRC}/docs/* \
		${PREFIX}/share/doc/p5-POE-Component-IRC
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
