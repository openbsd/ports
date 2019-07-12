# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:08 sthen Exp $

COMMENT=	RSS Abstraction Interface

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-RAI-1.3031
CATEGORIES=	textproc
REVISION =	0

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Parser>=4.0 \
		devel/p5-Time-TimeDate
BUILD_DEPENDS =	devel/p5-Task-Weaken

.include <bsd.port.mk>
