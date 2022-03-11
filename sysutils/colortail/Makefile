COMMENT=		color-able replacement for tail(1)

GH_ACCOUNT=		joakim666
GH_PROJECT=		colortail
GH_TAGNAME=		0.3.3

CATEGORIES=		sysutils

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoreconf

post-install:
	${INSTALL_MAN} ${FILESDIR}/colortail.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/colortail
	${INSTALL_DATA} ${WRKSRC}/example-conf/conf* \
			${PREFIX}/share/examples/colortail

.include <bsd.port.mk>
