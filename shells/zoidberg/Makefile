# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:43 sthen Exp $

COMMENT=	modular perl shell
CATEGORIES=	shells

V=		0.981
DISTNAME=	Zoidberg-$V
PKGNAME=	zoidberg-$V
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=	JBERGER
MODULES=	cpan
PKG_ARCH=	*
CONFIGURE_STYLE=modbuild
CONFIGURE_ARGS=	install_path=doc="${PREFIX}/share/doc/zoid/"

RUN_DEPENDS=	devel/p5-Exporter-Tidy \
		devel/p5-Term-ReadLine-Zoid \
		devel/p5-Env-PS1 \
		devel/p5-File-ShareDir

post-install:
	${INSTALL_DATA} \
		${PREFIX}/${P5SITE}/auto/share/dist/Zoidberg/zoidrc.example \
		${PREFIX}/share/doc/zoid/zoidrc.sample

.include <bsd.port.mk>
