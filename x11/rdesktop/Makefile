# $OpenBSD: Makefile,v 1.11 2002/06/23 23:37:13 jcs Exp $

COMMENT=	"open source client for Windows Terminal Server"

DISTNAME=	rdesktop-1.1.0
PATCHLEVEL=	19.9.0
PKGNAME=	${DISTNAME}.p${PATCHLEVEL}
CATEGORIES=	x11 net
NEED_VERSION=	1.504

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.rdesktop.org/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

MASTER_SITES0=	http://bibl4.oru.se/projects/rdesktop/
PATCHFILES=	rdesktop-unified-patch${PATCHLEVEL:S/./-/g}.bz2:0
PATCH_DIST_STRIP= -p2

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE= gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rdesktop ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rdesktop.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
