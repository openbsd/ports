COMMENT-main=	file archiver with high compression ratio
COMMENT-rar=	rar modules for p7zip

DIST_TUPLE=	github	p7zip-project	p7zip	v17.06	.
CATEGORIES=	archivers

# LGPL, except unRar plugin which is licensed as Freeware
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=	${COMPILER_LIBCXX} m pthread iconv
WANTLIB-main=	${WANTLIB} c
WANTLIB-rar=	${WANTLIB}

COMPILER =		base-clang ports-gcc

MULTI_PACKAGES=	-main -rar

LIB_DEPENDS=	converters/libiconv
RUN_DEPENDS-rar= ${BASE_PKGPATH},-main

CXXFLAGS+=	-I/usr/local/include
LDFLAGS+=	-L/usr/local/lib -liconv

USE_GMAKE=	Yes
MAKE_FILE=	makefile
MAKE_FLAGS=	MYCC="${CC}" MYCXX="${CXX}" \
		MYCFLAGS="${CFLAGS}" MYCXXFLAGS="${CXXFLAGS}" \
		LDFLAGS="${LDFLAGS}"

ALL_TARGET=	all3
TEST_TARGET=	all_test

do-configure:
	cp ${WRKSRC}/makefile.openbsd ${WRKSRC}/makefile.machine

do-install:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} PREFIX=${TRUEPREFIX} \
		DESTDIR=${DESTDIR} /bin/sh install.sh
	@chmod -R u=rwX,g=rX ${PREFIX}/share/doc/p7zip
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/man1/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
