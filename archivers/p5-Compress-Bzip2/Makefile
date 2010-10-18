# $OpenBSD: Makefile,v 1.3 2010/10/18 16:47:00 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to bzip2 compression library

DISTNAME=	Compress-Bzip2-2.09
REVISION=	0
CATEGORIES=	archivers

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
LIB_DEPENDS=	bz2.>=10::archivers/bzip2
USE_GROFF =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.in

.include <bsd.port.mk>
