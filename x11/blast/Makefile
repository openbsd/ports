# OpenBSD makefile for:	blast-1.0
# Version required:	1.0
# Date created:		6 January 1998
# Whom:			don
#
# $OpenBSD: Makefile,v 1.8 2000/12/23 15:12:01 kevlo Exp $
#

DISTNAME=	blast-1.0-ss-11.00
PKGNAME=	blast-1.0
CATEGORIES=	x11
NEED_VERSION=	1.348
MASTER_SITES=	ftp://hpux.csc.liv.ac.uk/hpux/X11/Demos/blast-1.0/ \
		ftp://hpftp.cict.fr/hpux/X11/Demos/blast-1.0/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

do-build:
	cd ${WRKSRC} && ${CC} blast.c -I${X11BASE}/include ${CFLAGS} -L$(X11BASE)/lib -lX11 -lXext -o blast

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/blast $(PREFIX)/bin/blast
	$(INSTALL_MAN) $(WRKSRC)/blast.man $(PREFIX)/man/man1/blast.1

.include <bsd.port.mk>
