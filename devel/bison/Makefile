# $OpenBSD: Makefile,v 1.13 2000/02/12 08:02:12 turan Exp $

DISTNAME=       bison-1.27
CATEGORIES=	devel

MAINTAINER=	d@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bison

SEPARATE_BUILD=concurrent
HAS_CONFIGURE=	yes
GNU_CONFIGURE=	yes
INFO_FILES=bison.info

# bison installs bison.info*... remove our patch original before installing
#
pre-install:
	@${RM} -f ${WRKSRC}/bison.info.orig

.include <bsd.port.mk>
