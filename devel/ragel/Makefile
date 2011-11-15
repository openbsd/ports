# $OpenBSD: Makefile,v 1.1.1.1 2011/11/15 16:35:15 jeremy Exp $

COMMENT =	state machine compiler

DISTNAME =	ragel-6.7
CATEGORIES =	devel

HOMEPAGE =	http://www.complang.org/ragel/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${HOMEPAGE}

WANTLIB =		c m stdc++
BUILD_DEPENDS =		lang/ruby/1.8,-main

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		ac_cv_prog_RUBY=ruby18

REGRESS_DEPENDS =	shells/bash \
			textproc/gdiff

do-regress:
	cd ${WRKBUILD}/test && ${LOCALBASE}/bin/bash ./runtests

.include <bsd.port.mk>
