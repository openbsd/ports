# $OpenBSD: Makefile,v 1.8 2002/01/27 17:51:20 brad Exp $

COMMENT=	"GNU portable threads"

DISTNAME=	pth-1.4.1
CATEGORIES=	devel
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= pth

HOMEPAGE=	http://www.gnu.org/software/pth/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --enable-pthread \
		 --enable-syscall-soft --enable-optimize \
		 --enable-batch \
		 --includedir="${PREFIX}/include/pth" \
		 --libdir="${PREFIX}/lib/pth"

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

REGRESS_TARGET=	test

.include <bsd.port.mk>
