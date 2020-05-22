# $OpenBSD: Makefile,v 1.24 2020/05/22 08:51:24 asou Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		instrumentation framework for dynamic analysis tools
CATEGORIES =		devel

V =			3.10.1
PV =			20160331
REVISION =		17
DISTNAME =		valgrind-${V}
EXTRACT_SUFX =		.tar.bz2

MASTER_SITES =		${HOMEPAGE:=downloads/}
MASTER_SITES0 =		https://bitbucket.org/uebayasi/valgrind-openbsd/downloads/
PATCH_DIST_STRIP =	-p1
PATCHFILES =		valgrind-${V}-openbsd-${PV}.patch:0

HOMEPAGE =		http://www.valgrind.org/

MAINTAINER =		Masao Uebayashi <uebayasi@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

CONFIGURE_STYLE =	autoreconf
USE_GMAKE =		Yes
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
AUTORECONF =		/bin/sh ./autogen.sh

.include <bsd.port.mk>

.if ${PROPERTIES:Mclang}
# replace -lgcc
MAKE_FLAGS =	TOOL_LDADD_COMMON=-lcompiler_rt
# XXX The '-s' option was not specified when executing the install command.
# Instead '--strip-all' is now executed at link time.
# strip command rewrite offset and align in ELF file. Therefor, when valgrind
# launch memcheck-amd64-openbsd, an Abort trap occurs in the execvp() system
# call.
INSTALL_STRIP =
.endif
