# $OpenBSD: Makefile,v 1.12 1999/11/22 15:37:52 turan Exp $

DISTNAME=       bison-1.27
CATEGORIES=	devel

MAINTAINER=	d@openbsd.org

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
