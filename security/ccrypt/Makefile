# $OpenBSD: Makefile,v 1.21 2015/01/21 06:23:34 bentley Exp $

COMMENT=	encrypt and decrypt AES files and streams

DISTNAME=	ccrypt-1.10
CATEGORIES=	security
REVISION =	0

HOMEPAGE=	http://ccrypt.sourceforge.net/

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
