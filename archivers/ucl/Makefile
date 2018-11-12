# $OpenBSD: Makefile,v 1.18 2018/11/12 08:53:45 bentley Exp $

COMMENT=	portable lossless data compression library

DISTNAME=	ucl-1.03
REVISION=	2
CATEGORIES=	archivers devel
SHARED_LIBS +=	ucl                  1.0      # .1.0

HOMEPAGE=	http://www.oberhumer.com/opensource/ucl

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	devel/nasm
.endif

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes
CONFIGURE_ARGS+=	--enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acconfig
MAKE_FLAGS=		CFLAGS_O=""

do-test:
	${WRKBUILD}/examples/simple

.include <bsd.port.mk>
