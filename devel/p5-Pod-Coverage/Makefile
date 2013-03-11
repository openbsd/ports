# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:20 espie Exp $

SHARED_ONLY=	Yes

COMMENT= 	check if the documentation of a module is comprehensive

MODULES=	cpan
DISTNAME=	Pod-Coverage-0.22
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
