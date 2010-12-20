# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 18:10:56 jeremy Exp $

COMMENT =	module to allow Bayesian and other types of classifications

DISTNAME =	classifier-1.3.3
CATEGORIES =	textproc

HOMEPAGE =	http://classifier.rubyforge.org/

# LGPL
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-fast-stemmer,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
