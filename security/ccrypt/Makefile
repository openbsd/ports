# $OpenBSD: Makefile,v 1.10 2004/12/27 13:28:33 alek Exp $

COMMENT=	"encrypt and decrypt AES files and streams"

DISTNAME=	ccrypt-1.7
CATEGORIES=	security

HOMEPAGE=	http://quasar.mathstat.uottawa.ca/~selinger/ccrypt/

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
