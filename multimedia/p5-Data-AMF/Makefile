# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:44 espie Exp $

COMMENT =	serialize/deserialize Adobe Action Message Format data

DISTNAME =	Data-AMF-0.09
CPAN_AUTHOR =	TYPESTER
CATEGORIES =	multimedia

MAINTAINER =	Nigel Taylor <njtaylor@asterisk.demon.co.uk>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Any-Moose \
		devel/p5-DateTime \
		devel/p5-Universal-require \
		textproc/p5-XML-LibXML
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS = devel/p5-YAML

USE_GROFF =	Yes

.include <bsd.port.mk>
