# $OpenBSD: Makefile,v 1.2 2002/12/29 15:15:18 fgsch Exp $

COMMENT=	"portable lossless data compression library"

DISTNAME=	ucl-1.01
CATEGORIES=	archivers devel

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
