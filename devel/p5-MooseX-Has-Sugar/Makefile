# $OpenBSD: Makefile,v 1.1.1.1 2010/09/29 17:15:44 jasper Exp $

COMMENT=		Sugar syntax for moose 'has' fields
DISTNAME=		MooseX-Has-Sugar-0.05046611
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-MooseX-Types \
			::devel/p5-Sub-Exporter \
			::devel/p5-namespace-autoclean
REGRESS_DEPENDS=	::devel/p5-Test-Exception

.include <bsd.port.mk>
