# $OpenBSD: Makefile,v 1.15 2020/07/03 21:44:48 sthen Exp $

COMMENT =	convert between DateTime and email (RFC2822/822) formats

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-Format-Mail-0.403
EPOCH =		0
CATEGORIES =	devel converters
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	perl

RUN_DEPENDS =	devel/p5-DateTime \
		devel/p5-Params-Validate

.include <bsd.port.mk>
