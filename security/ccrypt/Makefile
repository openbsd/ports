# $OpenBSD: Makefile,v 1.17 2010/10/18 21:41:45 espie Exp $

COMMENT=	encrypt and decrypt AES files and streams

DISTNAME=	ccrypt-1.9
CATEGORIES=	security

HOMEPAGE=	http://www.mathstat.dal.ca/~selinger/ccrypt/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}/download/ \
		${MASTER_SITE_SOURCEFORGE:=ccrypt/}

MODULES=	devel/gettext \
		textproc/intltool
BUILD_DEPENDS=	:emacs->=21,<22:editors/emacs21

CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
