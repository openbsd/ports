# $OpenBSD: Makefile,v 1.1.1.1 2009/09/24 19:51:44 espie Exp $
# Original from: auclair.vincent

COMMENT =		c++ commandline flags processing library

DISTNAME =		gflags-1.2

SHARED_LIBS +=  gflags               0.0      # .0.0
SHARED_LIBS +=  gflags_nothreads     0.0      # .0.0

CATEGORIES =		devel

HOMEPAGE =		http://code.google.com/p/google-gflags/

MAINTAINER=	Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://google-gflags.googlecode.com/files/

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
MAKE_FLAGS =		docdir='$$(prefix)/share/doc/gflags'

.include <bsd.port.mk>
