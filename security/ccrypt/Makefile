# $OpenBSD: Makefile,v 1.23 2018/08/28 18:49:11 bcallah Exp $

COMMENT=	encrypt and decrypt AES files and streams

V=		1.11
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
# XXX We need to use the upstream provided getopt or tests fail. This
# configuration option should be zapped as of v1.12 as it's fixed upstream.
CONFIGURE_ARGS=	--disable-emacs \
		--with-included-getopt

.include <bsd.port.mk>
