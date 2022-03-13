# Dlang
ONLY_FOR_ARCHS =	amd64

COMMENT =	commandline FreeDesktop trash bin utility
CATEGORIES =	sysutils

GH_ACCOUNT =	rushsteve1
GH_PROJECT =	trash-d
GH_TAGNAME =	15

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

# dub,dmd includes dmd compiler
BUILD_DEPENDS =	devel/dub,dmd

# Check to see if the manual page needs to be updated.
# To update: pandoc -s -f markdown -t man MANUAL.md -o trash.1
#            Put the new trash.1 in ${FILESDIR}
#            Update sha256 hash here
post-patch:
	@[ `sha256 < ${WRKSRC}/MANUAL.md` == 2ca031c31ca616acb03ea491edcd48114f2fbe98cacd1d82e964492d41eeda7e ] || \
		(echo "*** manpage changed; regenerate ${FILESDIR}/trash.1"; sleep 3)

do-build:
	cd ${WRKSRC} && dub build -b release --cache=local --compiler=dmd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trash ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/trash.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC} && dub test --cache=local --compiler=dmd

.include <bsd.port.mk>
