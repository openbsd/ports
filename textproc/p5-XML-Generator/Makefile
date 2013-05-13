# $OpenBSD: Makefile,v 1.6 2013/05/13 06:55:26 benoit Exp $

COMMENT=	extension for generating XML

MODULES=	cpan
DISTNAME =	XML-Generator-1.04
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-DOM
TEST_DEPENDS=devel/p5-Tie-IxHash

.include <bsd.port.mk>
