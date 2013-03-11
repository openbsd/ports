# $OpenBSD: Makefile,v 1.5 2013/03/11 11:42:45 espie Exp $

COMMENT=	extension for generating XML

MODULES=	cpan
DISTNAME=	XML-Generator-1.01
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-DOM
TEST_DEPENDS=devel/p5-Tie-IxHash

.include <bsd.port.mk>
