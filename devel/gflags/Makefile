# $OpenBSD: Makefile,v 1.4 2011/11/04 09:18:43 jasper Exp $
# Original from: auclair.vincent

COMMENT =		c++ commandline flags processing library

DISTNAME =		gflags-1.2
REVISION =		1

SHARED_LIBS +=		gflags               0.0      # .0.0
SHARED_LIBS +=		gflags_nothreads     0.0      # .0.0

CATEGORIES =		devel

HOMEPAGE =		http://code.google.com/p/google-gflags/

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://google-gflags.googlecode.com/files/

WANTLIB =		pthread m stdc++
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
MAKE_FLAGS =		docdir='$$(prefix)/share/doc/gflags'

.include <bsd.port.mk>
