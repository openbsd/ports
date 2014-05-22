# $OpenBSD: Makefile,v 1.30 2014/05/22 11:33:05 naddy Exp $

COMMENT=		hide awful SSL API in a sane interface

DISTNAME=		assl-1.5.0
REVISION=		0
EPOCH=			0
CATEGORIES=		security devel
SHARED_LIBS=		assl	6.2

HOMEPAGE=		https://opensource.conformal.com/wiki/assl
MASTER_SITES=		https://opensource.conformal.com/snapshots/assl/

MAINTAINER=		David Hill <dhill@mindcry.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

EG_DIR=			${PREFIX}/share/examples/assl

.if ${MACHINE_ARCH:Mmips64*}
EXTRA_CFLAGS=   -D__BUILTIN_HACK
.endif

do-configure:
	printf "major=${LIBassl_VERSION:R}\nminor=${LIBassl_VERSION:E}\n" \
	    > ${WRKSRC}/shlib_version

post-install:
	${INSTALL_DATA_DIR} ${EG_DIR}
	cd ${WRKSRC}/examples && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${EG_DIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${EG_DIR}/{} \;

.include <bsd.port.mk>
