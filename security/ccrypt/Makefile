# $OpenBSD: Makefile,v 1.15 2009/03/16 22:44:19 sthen Exp $

COMMENT=	encrypt and decrypt AES files and streams

DISTNAME=	ccrypt-1.7
PKGNAME=	${DISTNAME}p2
CATEGORIES=	security

HOMEPAGE=	http://www.mathstat.dal.ca/~selinger/ccrypt/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}/download/ \
		${MASTER_SITE_SOURCEFORGE:=ccrypt/}

CONFIGURE_STYLE= gnu

FLAVORS=	emacs21
FLAVOR?=

.if ${FLAVOR:L:Memacs21}
BUILD_DEPENDS=	:emacs->=21,<22:editors/emacs21
.endif

.include <bsd.port.mk>
