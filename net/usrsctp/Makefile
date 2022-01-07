# $OpenBSD: Makefile,v 1.4 2022/01/07 14:10:00 kn Exp $

COMMENT =		portable SCTP userland stack
GH_ACCOUNT =		sctplab
GH_PROJECT =		usrsctp
GH_TAGNAME =		0.9.5.0
CATEGORIES =		net
REVISION =		2

MASTER_SITES0 =		https://github.com/sctplab/usrsctp/commit/
PATCHFILES =		usrsctplib-link-pthread-{}40e35a7.patch:0 \
			pkgconfig-register-pthread-{}5f3540a.patch:0
PATCH_DIST_STRIP =	-p1

SHARED_LIBS =		usrsctp	0.1	# 2.0.0

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread

MODULES =		devel/cmake

CONFIGURE_ARGS =	-Dsctp_build_shared_lib=1

# built but not installed by default, enable when there is a use case for them
CONFIGURE_ARGS +=	-Dsctp_build_programs=0

# fix build with clang 13.0.0;  upstream fixed, remove on next version
CONFIGURE_ARGS +=	-Dsctp_werror=0

NO_TEST =		Yes

.include <bsd.port.mk>
