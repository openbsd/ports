# $OpenBSD: Makefile,v 1.5 2013/10/26 23:55:37 jeremy Exp $

COMMENT =	module to allow Bayesian and other types of classifications

DISTNAME =	classifier-1.3.3
REVISION=	2
CATEGORIES =	textproc

HOMEPAGE =	http://classifier.rubyforge.org/

# LGPL
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-fast-stemmer,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake

.include <bsd.port.mk>
