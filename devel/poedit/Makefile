# $OpenBSD: Makefile,v 1.5 2007/11/14 05:57:50 jasper Exp $

COMMENT=	cross-platform gettext catalogs (PO-files) editor

DISTNAME=	poedit-1.3.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.poedit.net/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=poedit/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes

WANTLIB=	c m pthread stdc++

LIB_DEPENDS=	wx_base_xml,wx_gtk2_html,wx_gtk2_adv,wx_gtk2_xrc,wx_base,wx_gtk2_core:wxWidgets-gtk2->=2.6.3:x11/wxWidgets

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--disable-spellchecking

PSEUDO_FLAVORS=	no_db
FLAVOR?=

.if ${FLAVOR:L:Mno_db}
CONFIGURE_ARGS+=--disable-transmem
.else
LIB_DEPENDS+=	db.>=4::databases/db/v4

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib/db4" \
		CPPFLAGS="-I${LOCALBASE}/include/db4"
.endif

.include <bsd.port.mk>
