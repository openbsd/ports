# $OpenBSD: Makefile,v 1.19 2017/11/03 15:30:30 bentley Exp $

COMMENT=		Rich city simulation game for X

DISTNAME=		lincity-1.13.1
CATEGORIES=		games
HOMEPAGE=		http://lincity.sourceforge.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB += ICE SM X11 Xext c iconv intl m png xcb z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lincity/}

LIB_DEPENDS=		devel/gettext \
			graphics/png

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
				LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
post-extract:
	@cd ${WRKSRC}; ln -s lincity.6 xlincity.6

.include <bsd.port.mk>
