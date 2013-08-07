# $OpenBSD: Makefile,v 1.51 2013/08/07 15:22:27 bcallah Exp $

COMMENT=		SLang-based newsreader

DISTNAME=		slrn-1.0.1
CATEGORIES=		news

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=slrn/}
HOMEPAGE=		http://www.slrn.org/

MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m ssl termcap slang

MAKE_ARGS+=		LDFLAGS="${LDFLAGS}"

USE_GROFF=		Yes
NO_TEST=		Yes
LIB_DEPENDS=		devel/libslang
MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inews --with-ssl --with-slrnpull --enable-spool
LDFLAGS=		-L${LOCALBASE}/lib -lm
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}"
CONFIGURE_ARGS+=	--with-slang=${LOCALBASE} \
			--with-libiconv=${LOCALBASE}

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

.include <bsd.port.mk>
