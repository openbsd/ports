# $OpenBSD: Makefile,v 1.3 2010/10/18 17:47:50 espie Exp $

COMMENT=	binutils for arm-elf cross-development

V=		2.16
DISTNAME=	binutils-${V}

HOMEPAGE=	http://www.gnu.org/software/binutils/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}

CONFIGURE_ARGS+=--enable-commonbfdlib=no
USE_GROFF =	Yes

.include <bsd.port.mk>
