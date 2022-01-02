# $OpenBSD: Makefile,v 1.3 2022/01/02 11:12:51 kn Exp $

COMMENT =		portable SCTP userland stack
GH_ACCOUNT =		sctplab
GH_PROJECT =		usrsctp
GH_TAGNAME =		0.9.5.0
CATEGORIES =		net
REVISION =		1

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

# XXX configure.ac accounts for this but CMakeLists.txt does not, needs fixing
CFLAGS +=		-pthread

NO_TEST =		Yes

post-extract:
	sed -i '/^Libs:/s,$$, -pthread,' ${WRKSRC}/usrsctp.pc.in

.include <bsd.port.mk>
