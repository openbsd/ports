COMMENT=	parallel, indexed xz compressor

VERSION=	1.0.7
DISTNAME=	pixz-${VERSION}
CATEGORIES=	archivers

HOMEPAGE=	https://github.com/vasi/pixz

# BSD2
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}/releases/download/v${VERSION}/

WANTLIB=	archive c lzma m pthread

CONFIGURE_STYLE=gnu

LIB_DEPENDS =	archivers/libarchive \
		archivers/xz

TEST_DEPENDS=	devel/cppcheck \
		sysutils/coreutils

pre-test:
	ln -fs ${LOCALBASE}/bin/gstat ${WRKDIR}/bin/stat

.include <bsd.port.mk>
