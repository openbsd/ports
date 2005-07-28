# $OpenBSD: Makefile,v 1.12 2005/07/28 17:49:27 aanriot Exp $

COMMENT=	"GNU portable threads"

DISTNAME=	pth-2.0.4
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=pth/}

HOMEPAGE=	http://www.gnu.org/software/pth/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --enable-syscall-soft \
		 --enable-optimize \
		 --enable-batch

REGRESS_TARGET=	test

.include <bsd.port.mk>
