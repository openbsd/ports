# $OpenBSD: Makefile,v 1.2 2011/03/08 21:51:27 landry Exp $

COMMENT =	serialize/deserialize Adobe Action Message Format data

DISTNAME =	Data-AMF-0.09
CPAN_AUTHOR =	TYPESTER
CATEGORIES =	multimedia

MAINTAINER =	Nigel Taylor <njtaylor@asterisk.demon.co.uk>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Any-Moose \
		devel/p5-DateTime \
		devel/p5-Universal-require \
		textproc/p5-XML-LibXML
BUILD_DEPENDS =	${RUN_DEPENDS}

REGRESS_DEPENDS = devel/p5-YAML

USE_GROFF =	Yes

.include <bsd.port.mk>
