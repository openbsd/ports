# $OpenBSD: Makefile,v 1.22 2009/03/26 18:25:28 naddy Exp $

COMMENT=	Unix menuing shell

DISTNAME=	mshell
PKGNAME=	mshell-1.0p0
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_BACKUP}
DISTFILES=	7432.Z
WRKDIST=	${WRKDIR}
EXTRACT_ONLY=	

PERMIT_PACKAGE_CDROM=	no explict license
PERMIT_PACKAGE_FTP=	no explict license
PERMIT_DISTFILES_CDROM=	no explict license
PERMIT_DISTFILES_FTP=	no explict license
WANTLIB=		c curses termlib

post-extract:
	zcat ${FULLDISTDIR}/${DISTFILES} |(cd ${WRKDIR}; \
	awk '{if (/^#!/) x++} {if(x) print $$0'}| /bin/sh)

NO_REGRESS=	Yes

.include <bsd.port.mk>
