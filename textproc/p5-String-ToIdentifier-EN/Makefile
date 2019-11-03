# $OpenBSD: Makefile,v 1.8 2019/11/03 01:45:26 afresh1 Exp $

COMMENT =	convert strings to english program identifiers
DISTNAME =	String-ToIdentifier-EN-0.12
CATEGORIES =	textproc

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
CONFIGURE_ARGS =	--skipdeps
MAKE_ENV =		TEST_POD=yes AUTHOR_TESTING=yes

RUN_DEPENDS =	devel/p5-namespace-clean \
		textproc/p5-Lingua-EN-Inflect-Phrase \
		textproc/p5-Text-Unidecode

.include <bsd.port.mk>
