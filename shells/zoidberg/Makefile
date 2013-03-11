# $OpenBSD: Makefile,v 1.10 2013/03/11 11:41:29 espie Exp $

COMMENT=	modular perl shell
CATEGORIES=	shells

V=		0.981
DISTNAME=	Zoidberg-$V
PKGNAME=	zoidberg-$V

# perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	JBERGER
MODULES=	cpan
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
