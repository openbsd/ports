COMMENT=	speaking ascii cow

DISTNAME=	Acme-Cow-0.2
MODULES=	cpan
PKGNAME=	cowsay-0.2
EPOCH=		0
REVISION=	1

CATEGORIES=	games

HOMEPAGE=	https://metacpan.org/dist/Acme-Cow

# perl
PERMIT_PACKAGE=	Yes

PKG_ARCH=	*
RUN_DEPENDS=	textproc/p5-Text-Template

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cows
	${INSTALL_DATA} ${WRKSRC}/cows/*.cow ${PREFIX}/share/cows

.include <bsd.port.mk>
