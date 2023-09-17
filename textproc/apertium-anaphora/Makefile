COMMENT =	apertium module implementing anaphora resolution

DISTNAME =	apertium-anaphora-$V
V =		1.0.2

CATEGORIES =	textproc

HOMEPAGE =	https://wiki.apertium.org/wiki/Anaphora_resolution_module

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} c lttoolbox3-3.5 m xml2

SITES =		https://github.com/apertium/apertium-anaphora/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

# c++20
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		textproc/lttoolbox
RUN_DEPENDS =		shells/bash

CONFIGURE_STYLE =	autoreconf

DEBUG_PACKAGES = ${BUILD_PACKAGES}

# for gnu stuff
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

.include <bsd.port.mk>
