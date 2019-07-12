# $OpenBSD: Makefile,v 1.26 2019/07/12 20:49:00 sthen Exp $

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
