# Dlang
ONLY_FOR_ARCHS =	amd64

COMMENT =	commandline FreeDesktop trash bin utility
REVISION =	1
CATEGORIES =	sysutils

GH_ACCOUNT =	rushsteve1
GH_PROJECT =	trash-d
GH_TAGNAME =	18

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

BUILD_DEPENDS =	lang/dmd

# dub,dmd includes dmd compiler
TEST_DEPENDS =	devel/dub,dmd

# Check to see if the manual page needs to be updated.
# To update: pandoc -s -f markdown -t man MANUAL.md -o trash.1
#            Put the new trash.1 in ${FILESDIR}
#            Update sha256 hash here
post-patch:
	@[ `sha256 < ${WRKSRC}/MANUAL.md` == 3b6f8936d018781146eb4036a492281443ea60de06adea6471f065c70d1c466e ] || \
		(echo "*** manpage changed; regenerate ${FILESDIR}/trash.1"; sleep 3)

do-build:
	cd ${WRKSRC} && dmd -O -release -inline -Isource -J. -oftrash \
		source/app.d source/trash/*.d

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trash ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/trash.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC} && dub test --cache=local --compiler=dmd

.include <bsd.port.mk>
