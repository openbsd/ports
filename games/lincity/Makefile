# $OpenBSD: Makefile,v 1.18 2016/04/12 15:19:40 naddy Exp $

COMMENT=		Rich city simulation game for X

DISTNAME=		lincity-1.12.1
CATEGORIES=		games
HOMEPAGE=		http://lincity.sourceforge.net/
REVISION=		0

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xext c intl m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lincity/}

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
				LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
post-extract:
	@cd ${WRKSRC}; ln -s lincity.6 xlincity.6

.include <bsd.port.mk>
