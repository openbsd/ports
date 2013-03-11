# $OpenBSD: Makefile,v 1.20 2013/03/11 11:41:24 espie Exp $

COMMENT=	encrypt and decrypt AES files and streams

DISTNAME=	ccrypt-1.10
CATEGORIES=	security

HOMEPAGE=	http://ccrypt.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}/download/ \
		${MASTER_SITE_SOURCEFORGE:=ccrypt/}

MODULES=	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-emacs

.include <bsd.port.mk>
