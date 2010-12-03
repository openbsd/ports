# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:22 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to bzip2 compression library

DISTNAME=	Compress-Bzip2-2.09
REVISION=	1
CATEGORIES=	archivers

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
LIB_DEPENDS =	archivers/bzip2
WANTLIB =	bz2>=10
USE_GROFF =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.in

.include <bsd.port.mk>
