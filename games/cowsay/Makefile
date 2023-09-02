COMMENT=	speaking ascii cow

V=		0.2.1
DISTNAME=	Acme-Cow-$V
PKGNAME=	cowsay-$V
MODULES=	cpan
EPOCH=		0

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
