# $OpenBSD: Makefile,v 1.46 2010/07/24 17:43:17 ajacoutot Exp $

COMMENT=		SLang-based newsreader

DISTNAME=		slrn-0.9.9p1 # p1 is part of upstream version XXX
PKGNAME=		${DISTNAME:S/p/pl/}
REVISION=		0
CATEGORIES=		news

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=slrn/}
HOMEPAGE=		http://www.slrn.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m ssl termcap slang

MAKE_ARGS+=		LDFLAGS="${LDFLAGS}"

NO_REGRESS=		Yes
LIB_DEPENDS=		::devel/libslang
MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inews --with-ssl --with-slrnpull --enable-spool
LDFLAGS=		-L${LOCALBASE}/lib -lm
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}"
CONFIGURE_ARGS+=	--with-slang=${LOCALBASE} \
			--with-libiconv=${LOCALBASE}

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

.include <bsd.port.mk>
