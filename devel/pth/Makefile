# $OpenBSD: Makefile,v 1.7 2001/12/21 00:36:37 brad Exp $

COMMENT=	"GNU portable threads"

DISTNAME=	pth-1.4.0
PKGNAME=	${DISTNAME}p1
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

REGRESS_TARGET=	test

.include <bsd.port.mk>
