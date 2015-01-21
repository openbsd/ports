# $OpenBSD: Makefile,v 1.5 2015/01/21 14:19:14 sthen Exp $

COMMENT =	serialize/deserialize Adobe Action Message Format data

DISTNAME =	Data-AMF-0.09
CPAN_AUTHOR =	TYPESTER
CATEGORIES =	multimedia
REVISION = 	0

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Any-Moose \
		devel/p5-DateTime \
		devel/p5-Universal-require \
		textproc/p5-XML-LibXML
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS = devel/p5-YAML

.include <bsd.port.mk>
