# $OpenBSD: Makefile,v 1.4 2014/11/01 19:59:17 jasper Exp $

COMMENT =	convert strings to english program identifiers
DISTNAME =	String-ToIdentifier-EN-0.11
REVISION =	0
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	devel/p5-namespace-clean \
		textproc/p5-Lingua-EN-Inflect-Phrase \
		textproc/p5-Text-Unidecode

.include <bsd.port.mk>
