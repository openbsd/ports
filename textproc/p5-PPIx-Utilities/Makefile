# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:43 espie Exp $

COMMENT=		extensions to PPI

MODULES=		cpan
DISTNAME=		PPIx-Utilities-1.001000
CATEGORIES=		textproc
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=		ELLIOTJS

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Exception-Class \
			devel/p5-Readonly \
			textproc/p5-PPI

TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
