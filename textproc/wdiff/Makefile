# OpenBSD makefile for:	wdiff
# Version required:	0.5
# Date created:		May 16 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.7 2000/04/09 17:38:34 espie Exp $
#

DISTNAME=	wdiff-0.5
CATEGORIES=	textproc
FAKE=No
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= wdiff

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=	yes
USE_AUTOCONF=	yes
MAN1=		wdiff.1

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/wdiff.info ${PREFIX}/info/dir

.include <bsd.port.mk>
