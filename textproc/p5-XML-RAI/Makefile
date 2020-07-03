# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:53 sthen Exp $

COMMENT=	RSS Abstraction Interface

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-RAI-1.3031
CATEGORIES=	textproc
REVISION =	1

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Parser>=4.0 \
		devel/p5-Time-TimeDate
BUILD_DEPENDS =	devel/p5-Task-Weaken

.include <bsd.port.mk>
