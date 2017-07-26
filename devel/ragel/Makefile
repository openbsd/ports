# $OpenBSD: Makefile,v 1.9 2017/07/26 22:45:18 sthen Exp $

COMMENT =		state machine compiler

DISTNAME =		ragel-6.9
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		http://www.colm.net/open-source/ragel/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES =		http://www.colm.net/files/ragel/

MODULES =		lang/ruby

MODRUBY_RUNDEP =	No

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		ac_cv_prog_RUBY=${RUBY} \
			ac_cv_prog_GDC= \
			ac_cv_prog_GMCS= \
			ac_cv_prog_GO= \
			ac_cv_prog_JAVAC= \
			ac_cv_prog_TXL=

TEST_DEPENDS =		shells/bash \
			textproc/gdiff

do-test:
	cd ${WRKBUILD}/test && ${LOCALBASE}/bin/bash ./runtests

.include <bsd.port.mk>
