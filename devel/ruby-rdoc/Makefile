# $OpenBSD: Makefile,v 1.3 2013/02/13 18:19:37 jasper Exp $

COMMENT =	generate and display ruby documentation

DISTNAME =	rdoc-3.11
REVISION =	1
CATEGORIES =	devel

HOMEPAGE =	http://docs.seattlerb.org/rdoc/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		converters/ruby-json,${MODRUBY_FLAVOR}>=1.4,<2.0

CONFIGURE_STYLE =	ruby gem

# All ruby implementations ship with rdoc/ri binaries, so rename
# the ones from the gem so they don't conflict.
post-install:
	mv ${PREFIX}/${GEM_BIN}/rdoc${GEM_BIN_SUFFIX}{,-gem}
	mv ${PREFIX}/${GEM_BIN}/ri${GEM_BIN_SUFFIX}{,-gem}

.include <bsd.port.mk>
