# $OpenBSD: Makefile,v 1.9 1999/04/20 01:16:43 d Exp $

DISTNAME=       bison-1.27
CATEGORIES=	devel

MAINTAINER=	d@openbsd.org

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bison

SEPARATE_BUILD=concurrent
HAS_CONFIGURE=	yes
GNU_CONFIGURE=	yes

# bison installs bison.info*... remove our patch original before installing
#
pre-install:
	@${RM} -f ${WRKSRC}/bison.info.orig

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/bison.info ${PREFIX}/info/dir

.include <bsd.port.mk>
