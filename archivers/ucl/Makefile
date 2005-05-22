# $OpenBSD: Makefile,v 1.6 2005/05/22 10:54:35 alek Exp $

COMMENT=	"portable lossless data compression library"

DISTNAME=	ucl-1.03
CATEGORIES=	archivers devel

HOMEPAGE=	http://www.oberhumer.com/opensource/ucl

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	:nasm-*:devel/nasm
.endif

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acconfig
MAKE_FLAGS=		CFLAGS_O=""

do-regress:
	${WRKBUILD}/examples/simple

.include <bsd.port.mk>
