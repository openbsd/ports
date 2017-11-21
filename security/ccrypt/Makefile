# $OpenBSD: Makefile,v 1.22 2017/11/21 00:13:03 naddy Exp $

COMMENT=	encrypt and decrypt AES files and streams

DISTNAME=	ccrypt-1.10
CATEGORIES=	security
REVISION =	1

HOMEPAGE=	http://ccrypt.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=  c iconv intl

MASTER_SITES=	${HOMEPAGE}/download/ \
		${MASTER_SITE_SOURCEFORGE:=ccrypt/}

MODULES=	textproc/intltool

LIB_DEPENDS=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-emacs

.include <bsd.port.mk>
