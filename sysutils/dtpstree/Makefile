# $OpenBSD: Makefile,v 1.8 2017/04/10 11:46:33 sthen Exp $

COMMENT =		display a tree of processes

DISTNAME =		dtpstree-1.0.3
REVISION =		0
CATEGORIES =		sysutils

HOMEPAGE =		http://code.douglasthrift.net/trac/dtpstree

MAINTAINER =		Douglas William Thrift <douglas@douglasthrift.net>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c kvm m ncurses ${LIBCXX}

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
