# OpenBSD makefile for:	wdiff
# Version required:	0.5
# Date created:		May 16 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1999/11/03 01:24:54 turan Exp $
#

DISTNAME=	wdiff-0.5
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= wdiff

MAINTAINER=	angelos@openbsd.org

GNU_CONFIGURE=	yes
USE_AUTOCONF=	yes
MAN1=		wdiff.1

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/wdiff.info ${PREFIX}/info/dir

.include <bsd.port.mk>
