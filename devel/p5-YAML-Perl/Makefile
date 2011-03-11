# $OpenBSD: Makefile,v 1.1.1.1 2011/03/11 09:04:34 jasper Exp $

COMMENT=		pure Perl implementation of YAML

DISTNAME=		YAML-Perl-0.02
CATEGORIES=		devel

MODULES=		cpan
CPAN_AUTHOR=		INGY

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS=		devel/p5-Error
REGRESS_DEPENDS=	devel/p5-Test-Deep \
			devel/p5-YAML-XS

.include <bsd.port.mk>
