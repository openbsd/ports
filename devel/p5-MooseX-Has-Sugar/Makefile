# $OpenBSD: Makefile,v 1.5 2011/04/13 18:45:55 jasper Exp $

COMMENT=		Sugar syntax for moose 'has' fields
DISTNAME=		MooseX-Has-Sugar-0.05070419
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
REGRESS_DEPENDS=	devel/p5-Test-Fatal

.include <bsd.port.mk>
