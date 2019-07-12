# $OpenBSD: Makefile,v 1.2 2019/07/12 20:44:58 sthen Exp $

COMMENT =	combines List::Util, List::SomeUtils and List::UtilsBy

DISTNAME =	List-AllUtils-0.15

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		textproc/p5-List-SomeUtils>=0.56 \
			textproc/p5-List-UtilsBy>=0.11

PKG_ARCH =		*

.include <bsd.port.mk>
