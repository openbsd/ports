# $OpenBSD: Makefile,v 1.16 2019/07/17 14:39:43 danj Exp $

COMMENT =		display a tree of processes

DISTNAME =		dtpstree-1.0.3
REVISION =		6
CATEGORIES =		sysutils

HOMEPAGE =		http://code.douglasthrift.net/trac/dtpstree

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c kvm m curses ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://code.douglasthrift.net/files/dtpstree/ \
			http://apt.douglasthrift.net/files/dtpstree/
EXTRACT_SUFX =		.tar.bz2

SEPARATE_BUILD =	Yes

MAKE_FILE =		GNUmakefile
USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.65

NO_TEST =		Yes

post-patch:
	@cd ${WRKDIST}; cat check_gnu_make.m4 >> aclocal.m4

.include <bsd.port.mk>
