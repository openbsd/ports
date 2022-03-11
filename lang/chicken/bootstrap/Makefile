BROKEN-powerpc64 = unrecoverable segmentation violation - execution terminated

PKGNAME=	chicken-bootstrap-${V}

NO_TEST=	Yes

ALL_TARGET=	boot-chicken

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/chicken-boot ${PREFIX}/libexec/chicken-bootstrap

.include <bsd.port.mk>
