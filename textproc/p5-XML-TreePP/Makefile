# $OpenBSD: Makefile,v 1.1.1.1 2012/01/24 00:25:56 nigel Exp $

COMMENT =	pure Perl implementation for parsing/writing XML documents

DISTNAME =	XML-TreePP-0.41
CATEGORIES =	textproc
CPAN_AUTHOR =	KAWASAKI

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan

RUN_DEPENDS =		p5-libwww-*|p5-HTTP-Lite-*:www/p5-libwww
REGRESS_DEPENDS =	converters/p5-Jcode \
			devel/p5-Test-Pod \
			devel/p5-Tie-IxHash \
			www/p5-HTTP-Lite \
			www/p5-libwww

REGRESS_FLAGS =		MORE_TESTS=Yes

.include <bsd.port.mk>
