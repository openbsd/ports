# $OpenBSD: Makefile,v 1.18 2000/10/22 15:41:45 espie Exp $

DISTNAME=       bison-1.27
CATEGORIES=	devel
NEED_VERSION=	1.305

MAINTAINER=	David Leonard <d@openbsd.org>

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bison

SEPARATE_BUILD=concurrent
CONFIGURE_STYLE=gnu
INFO_FILES=	bison.info

# bison installs bison.info*... remove our patch original before installing
#
pre-install:
	@rm -f ${WRKSRC}/bison.info.orig

.include <bsd.port.mk>
