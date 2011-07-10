# $OpenBSD: Makefile,v 1.5 2011/07/10 12:17:36 jasper Exp $

COMMENT=		extensions to PPI

MODULES=		cpan
DISTNAME=		PPIx-Utilities-1.001000
CATEGORIES=		textproc
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		ELLIOTJS

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Exception-Class \
			devel/p5-Readonly \
			textproc/p5-PPI

REGRESS_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
