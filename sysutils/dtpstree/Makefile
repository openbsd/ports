# $OpenBSD: Makefile,v 1.5 2012/03/29 13:39:00 sthen Exp $

COMMENT =		display a tree of processes

DISTNAME =		dtpstree-1.0.3
REVISION =		0
CATEGORIES =		sysutils

HOMEPAGE =		http://code.douglasthrift.net/trac/dtpstree

MAINTAINER =		Douglas William Thrift <douglas@douglasthrift.net>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c kvm m ncurses stdc++

MASTER_SITES =		http://code.douglasthrift.net/files/dtpstree/ \
			http://apt.douglasthrift.net/files/dtpstree/
EXTRACT_SUFX =		.tar.bz2

SEPARATE_BUILD =	Yes

MAKE_FILE =		GNUmakefile
USE_GMAKE =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.65

NO_REGRESS =		Yes

post-patch:
	@cd ${WRKDIST}; cat check_gnu_make.m4 >> aclocal.m4

.include <bsd.port.mk>
