COMMENT =	ELF related utils for ELF 32/64 binaries

DISTNAME =	pax-utils-1.3.10

CATEGORIES =	devel

HOMEPAGE =	https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB +=	c

SITES =		https://cgit.gentoo.org/proj/pax-utils.git/snapshot/

MODULES =	devel/meson

BUILD_DEPENDS =		textproc/xmlto

RUN_DEPENDS =		shells/bash

CONFIGURE_ARGS =	-Dlddtree_implementation=sh \
			-Duse_libcap=disabled \
			-Duse_fuzzing=false

pre-configure:
	sed -i 's,bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/lddtree.sh
	sed -i 's,bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/symtree.sh

post-install:
	rm ${PREFIX}/bin/pspax ${PREFIX}/man/man1/pspax.1 # Requires procfs

.include <bsd.port.mk>
