# $OpenBSD: Makefile,v 1.8 2013/03/11 11:42:43 espie Exp $

COMMENT=	use shorter names in catalyst tt views (deprecated)

MODULES=	cpan
DISTNAME=	Catalyst-View-TT-FunctionGenerator-0.02
CATEGORIES=	textproc devel
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-Catalyst-View-TT \
		www/p5-Catalyst-Plugin-Singleton \
		devel/p5-MRO-Compat

post-build:
	@rm -f ${WRKBUILD}/blib/lib/Catalyst/View/TT/FunctionGenerator.pm.orig

.include <bsd.port.mk>
