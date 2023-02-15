BROKEN-sparc64 = SIGBUS due to unaligned access when running tests

COMMENT =	journaling archiver for incremental backup, fork of ZPAQ

GH_ACCOUNT =	fcorbelli
GH_PROJECT =	zpaqfranz
GH_TAGNAME =	57.3

CATEGORIES =	archivers
MAINTAINER =	tux0r <tux0r@rosaelefanten.org>

# various: public domain, MIT, zlib, BSD 2-clause, Apache 2.0
PERMIT_PACKAGE =	yes

COMPILER=	base-clang ports-gcc base-gcc

WANTLIB =	${COMPILER_LIBCXX} c m

USE_WXNEEDED =	Yes

do-build:
	cd ${WRKSRC} && ${SET_ENV} ${MAKE_ENV} \
	    ${CXX} ${CXXFLAGS} -Dunix -o zpaqfranz zpaqfranz.cpp -lm -lpthread

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zpaqfranz ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/man/zpaqfranz.1 ${PREFIX}/man/man1/

do-test:
	${WRKBUILD}/zpaqfranz autotest -all

.include <bsd.port.mk>
