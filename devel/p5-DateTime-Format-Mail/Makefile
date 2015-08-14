# $OpenBSD: Makefile,v 1.11 2015/08/14 10:50:37 benoit Exp $

COMMENT =	convert between DateTime and email (RFC2822/822) formats

MODULES =	cpan
DISTNAME =	DateTime-Format-Mail-0.402
EPOCH =		0
CATEGORIES =	devel converters

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	perl

RUN_DEPENDS =	devel/p5-DateTime \
		devel/p5-Params-Validate

.include <bsd.port.mk>
