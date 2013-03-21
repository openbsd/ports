# $OpenBSD: Makefile,v 1.6 2013/03/21 08:45:15 ajacoutot Exp $
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

MASTER_SITES =		http://google-gflags.googlecode.com/files/

WANTLIB =		pthread m stdc++
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
MAKE_FLAGS =		docdir='$$(prefix)/share/doc/gflags'

.include <bsd.port.mk>
