# $OpenBSD: Makefile,v 1.14 2017/08/21 19:24:12 jasper Exp $

COMMENT =		c++ commandline flags processing library

GH_PROJECT =		gflags
GH_ACCOUNT =		gflags
GH_TAGNAME =		v1.2
REVISION =		5

SHARED_LIBS +=		gflags               0.0      # .0.0
SHARED_LIBS +=		gflags_nothreads     0.0      # .0.0

CATEGORIES =		devel

HOMEPAGE =		https://gflags.github.io/gflags/

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread m ${COMPILER_LIBCXX}
CONFIGURE_STYLE =	gnu
MAKE_FLAGS =		docdir='$$(prefix)/share/doc/gflags'

.include <bsd.port.mk>
