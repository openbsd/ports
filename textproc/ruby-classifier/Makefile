# $OpenBSD: Makefile,v 1.2 2011/09/16 11:41:41 espie Exp $

COMMENT =	module to allow Bayesian and other types of classifications

DISTNAME =	classifier-1.3.3
REVISION=	0
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
