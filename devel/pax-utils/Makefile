COMMENT =	ELF related utils for ELF 32/64 binaries

DISTNAME =	pax-utils-1.3.7
EXTRACT_SUFX =	.tar.xz
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	c

MASTER_SITES =	https://dev.gentoo.org/~sam/distfiles/app-misc/pax-utils/

MODULES =	devel/meson

RUN_DEPENDS =		shells/bash

CONFIGURE_ARGS =	-Dlddtree_implementation=sh \
			-Dbuild_manpages=disabled \
			-Duse_libcap=disabled \
			-Duse_fuzzing=false

pre-configure:
	sed -i 's,bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/lddtree.sh
	sed -i 's,bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/symtree.sh

post-install:
	rm ${PREFIX}/bin/pspax ${PREFIX}/man/man1/pspax.1 # Requires procfs

.include <bsd.port.mk>
