# $OpenBSD: Makefile,v 1.10 2015/01/21 14:41:38 sthen Exp $

COMMENT=	RSS Abstraction Interface

MODULES=	cpan
DISTNAME=	XML-RAI-1.301
REVISION=	0
CATEGORIES=	textproc

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Parser>=4.0 \
		devel/p5-Time-TimeDate

.include <bsd.port.mk>
