COMMENT =	unionfs filesystem implementation

DIST_TUPLE =	github rpodgorny unionfs-fuse v3.5 .

CATEGORIES =	sysutils

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c fuse pthread

MAKE_FLAGS =	CPPFLAGS="-DFUSE_USE_VERSION=29 -DDISABLE_XATTR" \
		LIB="-lfuse -lpthread"

ALL_TARGET =	build

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/unionfs ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/src/unionfsctl ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/man/unionfs.8 ${PREFIX}/man/man8/

do-test:
	cd ${WRKSRC} && ./test_legacy.sh

.include <bsd.port.mk>
