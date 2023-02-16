COMMENT=	convert .rpm files to cpio format

DISTNAME=	rpm2cpio-1.4
CATEGORIES=	converters archivers
REVISION=	1

HOMEPAGE=	https://cgit.freebsd.org/ports/log/archivers/rpm2cpio

# BSD
PERMIT_PACKAGE=	Yes

DISTFILES=	# empty

RUN_DEPENDS=	archivers/libarchive>2.8

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/rpm2cpio ${PREFIX}/bin

.include <bsd.port.mk>
