# $OpenBSD: Makefile,v 1.27 2013/03/11 11:23:57 espie Exp $

COMMENT=	Unix menuing shell

DISTNAME=	mshell
PKGNAME=	mshell-1.0
REVISION=	1
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_BACKUP}
DISTFILES=	7432.Z
WRKDIST=	${WRKDIR}
EXTRACT_ONLY=	

PERMIT_PACKAGE_CDROM=	no explict license
PERMIT_PACKAGE_FTP=	no explict license
PERMIT_DISTFILES_FTP=	no explict license

MASTER_SITES =		ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/
WANTLIB=		c curses termlib

post-extract:
	zcat ${FULLDISTDIR}/${DISTFILES} |(cd ${WRKDIR}; \
	awk '{if (/^#!/) x++} {if(x) print $$0'}| /bin/sh)

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
