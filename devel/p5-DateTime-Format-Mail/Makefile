# $OpenBSD: Makefile,v 1.13 2016/06/28 14:34:17 sthen Exp $

COMMENT =	convert between DateTime and email (RFC2822/822) formats

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-Format-Mail-0.403
EPOCH =		0
CATEGORIES =	devel converters

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	perl

RUN_DEPENDS =	devel/p5-DateTime \
		devel/p5-Params-Validate

.include <bsd.port.mk>
