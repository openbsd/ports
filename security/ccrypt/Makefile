# $OpenBSD: Makefile,v 1.28 2021/10/05 15:46:43 cwen Exp $

PORTROACH=	skipv:1.11.mac-x86_64

COMMENT=	encrypt and decrypt AES files and streams

V=		1.11
REVISION=	2
DISTNAME=	ccrypt-${V}
CATEGORIES=	security

HOMEPAGE=	http://ccrypt.sourceforge.net/

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
