# Dlang
ONLY_FOR_ARCHS =	amd64

COMMENT =	commandline FreeDesktop trash bin utility
CATEGORIES =	sysutils

GH_ACCOUNT =	rushsteve1
GH_PROJECT =	trash-d
GH_TAGNAME =	17

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
	@[ `sha256 < ${WRKSRC}/MANUAL.md` == e4b728a909c1fc782e731836681139e340fe39933f5c3faed502c493bd379ef8 ] || \
		(echo "*** manpage changed; regenerate ${FILESDIR}/trash.1"; sleep 3)

do-build:
	cd ${WRKSRC} && dub build -b release --cache=local --compiler=dmd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trash ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/trash.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC} && dub test --cache=local --compiler=dmd

.include <bsd.port.mk>
