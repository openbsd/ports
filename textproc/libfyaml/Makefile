COMMENT=		YAML parser and emitter

GH_ACCOUNT=		pantoniou
GH_PROJECT=		libfyaml
GH_TAGNAME=		v0.9
REVISION=		0

SHARED_LIBS +=  fyaml                0.0      # 1.4

CATEGORIES=		textproc devel

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

# uses stdatomic.h from C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS=		devel/libyaml

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		ac_cv_path_GIT= \
			ac_cv_path_JQ= \
			ac_cv_path_DOCKER=

pre-configure:
	grep -rl "#include <alloca\\.h>" ${WRKSRC} | \
		xargs sed -i "s|#include <alloca\\.h>|#include <stdlib.h>|"

.include <bsd.port.mk>
