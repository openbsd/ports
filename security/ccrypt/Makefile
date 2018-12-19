# $OpenBSD: Makefile,v 1.24 2018/12/19 18:18:42 jca Exp $

COMMENT=	encrypt and decrypt AES files and streams

V=		1.11
REVISION=	0
DISTNAME=	ccrypt-${V}
CATEGORIES=	security

HOMEPAGE=	http://ccrypt.sourceforge.net/

MAINTAINER=	Charlene Wendling <julianaito@posteo.jp>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=  c iconv intl

MASTER_SITES=	${HOMEPAGE}/download/${V}/ \
		${MASTER_SITE_SOURCEFORGE:=ccrypt/}

MODULES=	textproc/intltool

LIB_DEPENDS=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-emacs

.include <bsd.port.mk>
