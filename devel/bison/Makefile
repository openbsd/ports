# $OpenBSD: Makefile,v 1.11 1999/11/22 09:08:55 kevlo Exp $

DISTNAME=       bison-1.28
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
