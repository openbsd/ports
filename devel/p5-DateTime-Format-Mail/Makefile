# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:51 sthen Exp $

COMMENT =	convert between DateTime and email (RFC2822/822) formats

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-Format-Mail-0.403
EPOCH =		0
CATEGORIES =	devel converters

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	perl

RUN_DEPENDS =	devel/p5-DateTime \
		devel/p5-Params-Validate

.include <bsd.port.mk>
