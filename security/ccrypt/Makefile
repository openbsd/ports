PORTROACH=	skipv:1.11.mac-x86_64

COMMENT=	encrypt and decrypt AES files and streams

V=		1.11
REVISION=	3
DISTNAME=	ccrypt-${V}
CATEGORIES=	security

HOMEPAGE=	https://ccrypt.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=  c iconv intl

SITES=		${HOMEPAGE}/download/${V}/ \
		${SITE_SOURCEFORGE:=ccrypt/}

MODULES=	textproc/intltool

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-emacs

.include <bsd.port.mk>
