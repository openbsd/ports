# $OpenBSD: Makefile,v 1.11 2006/02/05 10:48:57 steven Exp $

COMMENT=	"encrypt and decrypt AES files and streams"

DISTNAME=	ccrypt-1.7
PKGNAME=	${DISTNAME}p0
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
BUILD_DEPENDS=	:emacs-21.*:editors/emacs21
.endif

.include <bsd.port.mk>
