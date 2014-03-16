# $OpenBSD: Makefile,v 1.3 2014/03/16 21:57:04 afresh1 Exp $

COMMENT =	convert strings to english program identifiers
DISTNAME =	String-ToIdentifier-EN-0.11
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <andrew@cpan.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	devel/p5-namespace-clean \
		textproc/p5-Lingua-EN-Inflect-Phrase \
		textproc/p5-Text-Unidecode

.include <bsd.port.mk>
