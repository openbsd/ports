# $OpenBSD: Makefile,v 1.5 2016/03/20 19:57:08 naddy Exp $

COMMENT =	convert strings to english program identifiers
DISTNAME =	String-ToIdentifier-EN-0.11
REVISION =	0
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	devel/p5-namespace-clean \
		textproc/p5-Lingua-EN-Inflect-Phrase \
		textproc/p5-Text-Unidecode

.include <bsd.port.mk>
