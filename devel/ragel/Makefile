# $OpenBSD: Makefile,v 1.3 2014/04/18 09:55:22 ajacoutot Exp $

COMMENT =	state machine compiler

DISTNAME =	ragel-6.7
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://www.complang.org/ragel/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${HOMEPAGE}

WANTLIB =		c m stdc++

MODULES =		lang/ruby

MODRUBY_RUNDEP =	No

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		ac_cv_prog_RUBY=${RUBY}

TEST_DEPENDS =		shells/bash \
			textproc/gdiff

do-test:
	cd ${WRKBUILD}/test && ${LOCALBASE}/bin/bash ./runtests

.include <bsd.port.mk>
