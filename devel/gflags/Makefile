# $OpenBSD: Makefile,v 1.11 2017/04/10 11:45:25 sthen Exp $
# Original from: auclair.vincent

COMMENT =		c++ commandline flags processing library

DISTNAME =		gflags-1.2
REVISION =		3

SHARED_LIBS +=		gflags               0.0      # .0.0
SHARED_LIBS +=		gflags_nothreads     0.0      # .0.0

CATEGORIES =		devel

HOMEPAGE =		https://code.google.com/p/google-gflags/

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=google-gflags/}

WANTLIB =		pthread m ${LIBCXX}
CONFIGURE_STYLE =	gnu
MAKE_FLAGS =		docdir='$$(prefix)/share/doc/gflags'

.include <bsd.port.mk>
