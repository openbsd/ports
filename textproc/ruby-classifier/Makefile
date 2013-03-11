# $OpenBSD: Makefile,v 1.4 2013/03/11 11:42:46 espie Exp $

COMMENT =	module to allow Bayesian and other types of classifications

DISTNAME =	classifier-1.3.3
REVISION=	1
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
