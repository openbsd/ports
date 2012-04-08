# $OpenBSD: Makefile,v 1.7 2012/04/08 22:04:40 sthen Exp $

COMMENT=	use shorter names in catalyst tt views (deprecated)

MODULES=	cpan
DISTNAME=	Catalyst-View-TT-FunctionGenerator-0.02
CATEGORIES=	textproc devel
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-Catalyst-View-TT \
		www/p5-Catalyst-Plugin-Singleton \
		devel/p5-MRO-Compat

post-build:
	@rm -f ${WRKBUILD}/blib/lib/Catalyst/View/TT/FunctionGenerator.pm.orig

.include <bsd.port.mk>
