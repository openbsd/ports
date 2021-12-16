# $OpenBSD: Makefile,v 1.1.1.1 2021/12/16 01:23:46 kn Exp $

COMMENT =		portable SCTP userland stack
GH_ACCOUNT =		sctplab
GH_PROJECT =		usrsctp
GH_TAGNAME =		0.9.5.0
CATEGORIES =		net

SHARED_LIBS =		usrsctp	0.0	# 2.0.0

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

CONFIGURE_ARGS =	-Dsctp_build_shared_lib=1

# built but not installed by default, enable when there is a use case for them
CONFIGURE_ARGS +=	-Dsctp_build_programs=0

NO_TEST =		Yes

.include <bsd.port.mk>
