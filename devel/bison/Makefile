# OpenBSD makefile for: bison
# Version required:     1.25
# Date created:         22 November 1997
# Whom:                 d
#
# $OpenBSD: Makefile,v 1.2 1998/06/24 21:29:00 marc Exp $
#

DISTNAME=       bison-1.25
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	d@openbsd.org

HAS_CONFIGURE=	yes
GNU_CONFIGURE=	yes
MAN1=		bison.1

# bison installs bison.info*... remove our patch original before installing
#
pre-install:
	@${RM} ${WRKSRC}/bison.info.orig

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/bison.info ${PREFIX}/info/dir

.include <bsd.port.mk>
