# $OpenBSD: Makefile,v 1.1.1.1 2002/05/03 20:01:17 wcobb Exp $

COMMENT=	"portable lossless data compression library"

DISTNAME=	ucl-1.01
CATEGORIES=	archivers devel
NEED_VERSION=	1.525

HOMEPAGE=	http://www.oberhumer.com/opensource/ucl

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	nasm::devel/nasm
.endif

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --enable-static
MAKE_FLAGS=		CFLAGS_O=""

.include <bsd.port.mk>
