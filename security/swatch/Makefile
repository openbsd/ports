# $OpenBSD: Makefile,v 1.32 2019/07/12 20:49:37 sthen Exp $

COMMENT=	simple log monitoring program

DISTNAME=	swatch-3.2.3
REVISION =	1
CATEGORIES=	security sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=swatch/}

HOMEPAGE=	http://swatch.sourceforge.net/

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

RUN_DEPENDS=	devel/p5-Date-Calc \
		devel/p5-File-Tail \
		devel/p5-Time-TimeDate \
		converters/p5-DateManip
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= perl
PKG_ARCH=	*

.include <bsd.port.mk>
