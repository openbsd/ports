ONLY_FOR_ARCHS =	amd64

COMMENT =		instrumentation framework for dynamic analysis tools
CATEGORIES =		devel

V =			3.21.0
DISTNAME =		valgrind-${V}
REVISION =		0
EXTRACT_SUFX =		.tar.bz2

SITES =			https://sourceware.org/pub/valgrind/
PATCH_DIST_STRIP =	-p0

HOMEPAGE =		https://valgrind.org/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

CONFIGURE_STYLE =	autoreconf
USE_GMAKE =		Yes
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
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
