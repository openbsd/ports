# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:27 espie Exp $

COMMENT =	state machine compiler

DISTNAME =	ragel-6.7
CATEGORIES =	devel

HOMEPAGE =	http://www.complang.org/ragel/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${HOMEPAGE}

WANTLIB =		c m stdc++
BUILD_DEPENDS =		lang/ruby/1.8,-main

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		ac_cv_prog_RUBY=ruby18

TEST_DEPENDS =	shells/bash \
			textproc/gdiff

do-test:
	cd ${WRKBUILD}/test && ${LOCALBASE}/bin/bash ./runtests

.include <bsd.port.mk>
