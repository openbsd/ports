# $OpenBSD: Makefile,v 1.28 2014/07/09 12:42:30 zhuk Exp $

COMMENT=	integrated LaTeX environment for KDE
DISTNAME=	kile-2.0
REVISION=	8
CATEGORIES=	editors x11/kde

HOMEPAGE=	http://kile.sourceforge.net/

MAINTAINER=	David Love <david@homeunix.org.uk>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kile/}
EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat
WANTLIB +=	fam fontconfig freetype idn jpeg m pcre pcreposix png
WANTLIB +=	pthread pthread-stubs stdc++ util xcb z
WANTLIB +=	${KDE}/DCOP ${KDE}/kabc ${KDE}/katepartinterfaces
WANTLIB +=	${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeprint ${KDE}/kdesu
WANTLIB +=	${KDE}/kdeui ${KDE}/khtml ${KDE}/kio ${KDE}/kjs
WANTLIB +=	${KDE}/kparts ${KDE}/kresources ${KDE}/kspell ${KDE}/ktexteditor
WANTLIB +=	${KDE}/kutils ${KDE}/kwalletclient ${KDE}/vcard

RUN_DEPENDS=	x11/kde/graphics3 \
		print/texlive/base \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS=	x11/kde/libs3

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
