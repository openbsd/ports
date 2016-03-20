# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:11 naddy Exp $

COMMENT=	RSS Abstraction Interface

MODULES=	cpan
PKG_ARCH=	*
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
