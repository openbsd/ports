# $OpenBSD: Makefile,v 1.9 2013/03/11 11:42:45 espie Exp $

COMMENT=	RSS Abstraction Interface

MODULES=	cpan
DISTNAME=	XML-RAI-1.301
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Parser>=4.0 \
		devel/p5-Time-TimeDate

.include <bsd.port.mk>
