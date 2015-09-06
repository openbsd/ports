# $OpenBSD: Makefile,v 1.17 2015/09/06 12:01:39 kirby Exp $

COMMENT=		Rich city simulation game for X

DISTNAME=		lincity-1.12.1
CATEGORIES=		games
HOMEPAGE=		http://lincity.sourceforge.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xext c m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lincity/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
				LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
post-extract:
	@cd ${WRKSRC}; ln -s lincity.6 xlincity.6

.include <bsd.port.mk>
