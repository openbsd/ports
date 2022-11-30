COMMENT=	speaking ascii cow

DISTNAME=	Acme-Cow-0.2
MODULES=	cpan
PKGNAME=	cowsay-0.2
EPOCH=		0

#GH_ACCOUNT=	tnalpgge
#GH_PROJECT=	rank-amateur-cowsay
#GH_COMMIT=	d66b866cf136502054e081b8714b09f7e43cd39f

#DISTNAME=	cowsay-3.04

CATEGORIES=	games

HOMEPAGE=	https://metacpan.org/dist/Acme-Cow

# perl
PERMIT_PACKAGE=	Yes

PKG_ARCH=	*
RUN_DEPENDS=	textproc/p5-Text-Template

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cows
	${INSTALL_DATA} ${WRKSRC}/cows/* ${PREFIX}/share/cows

.include <bsd.port.mk>
