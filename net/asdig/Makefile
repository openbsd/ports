# $OpenBSD: Makefile,v 1.1.1.1 2020/05/18 11:00:41 denis Exp $

COMMENT =	retrieve routing informations efficiently via dns queries

GH_ACCOUNT =		rezopole
GH_PROJECT =		asdig
GH_TAGNAME =		v0.97

CATEGORIES =		net

MAINTAINER =		Denis Fondras <denis@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += 		${COMPILER_LIBCXX} c lib/libbind/bind m

LIB_DEPENDS =		net/libbind

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	prefix=${PREFIX} \
			mandir=${PREFIX}/man
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

# network access
TEST_IS_INTERACTIVE =	Yes
TEST_TARGET =		vimtest

.include <bsd.port.mk>
