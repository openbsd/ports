# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:02 sthen Exp $

COMMENT=	use shorter names in catalyst tt views (deprecated)

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-View-TT-FunctionGenerator-0.02
CATEGORIES=	textproc devel

# Artistic + GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-Catalyst-View-TT \
		www/p5-Catalyst-Plugin-Singleton \
		devel/p5-MRO-Compat

post-build:
	rm -f ${WRKBUILD}/blib/lib/Catalyst/View/TT/FunctionGenerator.pm.orig

.include <bsd.port.mk>
