COMMENT=		YAML parser and emitter

GH_ACCOUNT=		pantoniou
GH_PROJECT=		libfyaml
GH_TAGNAME=		v0.9.6
REVISION=		0

SHARED_LIBS +=  fyaml                0.1      # 5.0

CATEGORIES=		textproc devel

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += c m pthread

# uses stdatomic.h from C11
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

BUILD_DEPENDS=		devel/libyaml

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		ac_cv_path_GIT= \
			ac_cv_path_JQ= \
			ac_cv_path_DOCKER=

# XXX lib/fy-walk.c:4621:31: error: use of undeclared identifier 'DBL_DECIMAL_DIG'
CFLAGS +=		-DDBL_DECIMAL_DIG=__DBL_DECIMAL_DIG__

pre-configure:
	grep -rl "#include <alloca\\.h>" ${WRKSRC} | \
		xargs sed -i "s|#include <alloca\\.h>|#include <stdlib.h>|"

.include <bsd.port.mk>
