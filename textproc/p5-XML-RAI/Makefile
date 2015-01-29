# $OpenBSD: Makefile,v 1.12 2015/01/29 14:09:25 benoit Exp $

COMMENT=	RSS Abstraction Interface

MODULES=	cpan
DISTNAME =	XML-RAI-1.3031
CATEGORIES=	textproc

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Parser>=4.0 \
		devel/p5-Time-TimeDate
BUILD_DEPENDS =	devel/p5-Task-Weaken

.include <bsd.port.mk>
