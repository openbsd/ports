# $OpenBSD: Makefile,v 1.14 2013/03/10 22:28:05 espie Exp $

COMMENT=	portable lossless data compression library

DISTNAME=	ucl-1.03
CATEGORIES=	archivers devel
SHARED_LIBS +=	ucl                  1.0      # .1.0

HOMEPAGE=	http://www.oberhumer.com/opensource/ucl

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

REVISION = 	0
MASTER_SITES=	${HOMEPAGE}/download/

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	devel/nasm
.endif

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acconfig
MAKE_FLAGS=		CFLAGS_O=""
USE_LIBTOOL=		Yes

do-test:
	${WRKBUILD}/examples/simple

.include <bsd.port.mk>
