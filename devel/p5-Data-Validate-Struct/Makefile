# $OpenBSD: Makefile,v 1.11 2019/07/12 20:44:50 sthen Exp $

COMMENT =		validate recursive perl hash structures

DISTNAME =		Data-Validate-Struct-0.1
PKGNAME =		p5-${DISTNAME}0

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		textproc/p5-Regexp-Common \
			devel/p5-Data-Validate>=0.06 \
			devel/p5-Data-Validate-IP>=0.18

.include <bsd.port.mk>
