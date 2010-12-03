# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT=		Sugar syntax for moose 'has' fields
DISTNAME=		MooseX-Has-Sugar-0.05046611
REVISION=		0
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
REGRESS_DEPENDS=	devel/p5-Test-Exception

.include <bsd.port.mk>
