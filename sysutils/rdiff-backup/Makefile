#	$OpenBSD: Makefile,v 1.7 2009/10/12 23:52:08 naddy Exp $

COMMENT=	incremental backup
DISTNAME=	rdiff-backup-1.0.5
PKGNAME=	${DISTNAME}p3
CATEGORIES=	sysutils
HOMEPAGE=	http://www.nongnu.org/rdiff-backup/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS+=		rsync::net/librsync

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=rdiff-backup/}

MODULES=		lang/python

NO_REGRESS=		Yes

.include <bsd.port.mk>
