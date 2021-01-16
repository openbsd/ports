# $OpenBSD: Makefile,v 1.27 2021/01/16 22:51:21 cwen Exp $

PORTROACH=	skipv:1.11.mac-x86_64

COMMENT=	encrypt and decrypt AES files and streams

V=		1.11
REVISION=	1
DISTNAME=	ccrypt-${V}
CATEGORIES=	security

HOMEPAGE=	http://ccrypt.sourceforge.net/

MAINTAINER=	Charlene Wendling <julianaito@posteo.jp>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=  c iconv intl

MASTER_SITES=	${HOMEPAGE}/download/${V}/ \
		${MASTER_SITE_SOURCEFORGE:=ccrypt/}

MODULES=	textproc/intltool

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-emacs

.include <bsd.port.mk>
