# $OpenBSD: Makefile,v 1.14 2006/08/01 05:09:25 aanriot Exp $

COMMENT=	"GNU portable threads"

DISTNAME=	pth-2.0.7
SHARED_LIBS=	pth 20.25
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=pth/}

HOMEPAGE=	http://www.gnu.org/software/pth/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --enable-syscall-soft \
		 --enable-optimize \
		 --enable-batch

REGRESS_TARGET=	test

.include <bsd.port.mk>
