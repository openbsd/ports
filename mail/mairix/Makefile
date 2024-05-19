COMMENT=	program for indexing & searching email

GH_ACCOUNT=	vandry
GH_PROJECT=	mairix
GH_COMMIT=	1cc06f4a73ba4b940008c1ffc398d2ac708cd6d6

DISTNAME=	mairix-0.25pre20220920
CATEGORIES=	mail

# GPLv2 only
PERMIT_PACKAGE=	Yes

# patched to disable TLS for now, cert verification fails
# update DESCR if fixed
#WANTLIB=	bz2 c crypto lzma ssl z
WANTLIB=	bz2 c lzma z

BUILD_DEPENDS=	devel/bison
LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz
TEST_DEPENDS=	shells/bash \
		sysutils/coreutils \
		misc/findutils

CONFIGURE_STYLE= simple
CONFIGURE_ENV=	CPPFLAGS="-I${PREFIX}/include" \
		LDFLAGS="-L${PREFIX}/lib"
USE_GMAKE=	Yes
TEST_TARGET=	check

pre-test:
	sed -i 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/test/scripts/*.sh
.for i in stat find
	ln -fs /usr/local/bin/g$i ${WRKDIR}/bin/$i
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mairix
	${INSTALL_DATA} ${WRKSRC}/*.eg ${PREFIX}/share/examples/mairix/

.include <bsd.port.mk>
