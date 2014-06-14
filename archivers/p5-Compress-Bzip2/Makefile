# $OpenBSD: Makefile,v 1.11 2014/06/14 23:23:11 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to bzip2 compression library

DISTNAME=	Compress-Bzip2-2.16
CATEGORIES=	archivers
REVISION=	0

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
LIB_DEPENDS =	archivers/bzip2
WANTLIB =	bz2>=10 c

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.in

.include <bsd.port.mk>
