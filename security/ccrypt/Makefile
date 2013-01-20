# $OpenBSD: Makefile,v 1.19 2013/01/20 20:03:44 jasper Exp $

COMMENT=	encrypt and decrypt AES files and streams

DISTNAME=	ccrypt-1.10
CATEGORIES=	security

HOMEPAGE=	http://ccrypt.sourceforge.net/

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

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-emacs

.include <bsd.port.mk>
