# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:04 espie Exp $
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
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
MAKE_FLAGS =		docdir='$$(prefix)/share/doc/gflags'

.include <bsd.port.mk>
