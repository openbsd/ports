# $OpenBSD: Makefile,v 1.22 2013/03/21 08:45:17 ajacoutot Exp $

COMMENT=	integrated LaTeX environment for KDE
DISTNAME=	kile-2.0
REVISION=	3
CATEGORIES=	editors x11/kde

HOMEPAGE=	http://kile.sourceforge.net/

MAINTAINER=	David Love <david@homeunix.org.uk>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kile/}
EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	DCOP ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat
WANTLIB +=	fam fontconfig freetype idn jpeg kabc katepartinterfaces
WANTLIB +=	kdecore kdefx kdeprint kdesu kdeui khtml kio kjs kparts
WANTLIB +=	kresources kspell ktexteditor kutils kwalletclient m pcre
WANTLIB +=	pcreposix png pthread pthread-stubs stdc++ util vcard xcb
WANTLIB +=	z

LIB_DEPENDS=	x11/kde/libs3
	
RUN_DEPENDS=	x11/kde/graphics3 \
		print/texlive/base \
		devel/desktop-file-utils

MODULES=	x11/kde devel/gettext

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.61

MODGNU_CONFIG_GUESS_DIRS=${MODKDE_CONFIG_GUESS_DIRS}

CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		LDADD="-pthread -lm"

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/src/kile/kile.kcfg

.include <bsd.port.mk>
