# Dlang
ONLY_FOR_ARCHS =	amd64

COMMENT =	commandline FreeDesktop trash bin utility
CATEGORIES =	sysutils

GH_ACCOUNT =	rushsteve1
GH_PROJECT =	trash-d
GH_TAGNAME =	19

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

MODULES = lang/ruby

BUILD_DEPENDS =	lang/dmd \
		textproc/ruby-ronn

MODRUBY_RUNDEP = No

# dub,dmd includes dmd compiler
TEST_DEPENDS =	devel/dub,dmd

do-build:
	cd ${WRKSRC} && dmd -O -release -inline -Isource -J. -oftrash \
		source/app.d source/trash/*.d

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trash ${PREFIX}/bin
	ronn${GEM_BIN_SUFFIX} --roff --pipe ${WRKSRC}/MANUAL.md > \
		${PREFIX}/man/man1/trash.1

do-test:
	cd ${WRKSRC} && \
		env HOME=${WRKDIR} dub test --cache=local --compiler=dmd

.include <bsd.port.mk>
