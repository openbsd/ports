# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:45 sthen Exp $

COMMENT=	use shorter names in catalyst tt views (deprecated)

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-View-TT-FunctionGenerator-0.02
CATEGORIES=	textproc devel
REVISION=	0

# Artistic + GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-Catalyst-View-TT \
		www/p5-Catalyst-Plugin-Singleton \
		devel/p5-MRO-Compat

post-build:
	rm -f ${WRKBUILD}/blib/lib/Catalyst/View/TT/FunctionGenerator.pm.orig

.include <bsd.port.mk>
