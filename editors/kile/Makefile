# $OpenBSD: Makefile,v 1.14 2009/08/10 06:31:08 kili Exp $

COMMENT=	integrated LaTeX environment for KDE
DISTNAME=	kile-2.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors x11/kde

HOMEPAGE=	http://kile.sourceforge.net/

MAINTAINER=	David Love <david@homeunix.org.uk>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kile/}
EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xrender ICE SM c m pthread stdc++ util z \
		fam rpcsvc art_lgpl_2 jpeg pcre pcreposix png idn \
		pthread-stubs xcb

LIB_DEPENDS=	DCOP,kabc,katepartinterfaces.>=1,kdecore.>=4,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell.>=7,ktexteditor.>=1,kutils,kwalletclient,vcard::x11/kde/libs3
	
RUN_DEPENDS=	::x11/kde/graphics3 \
		::print/texlive/base \
		:desktop-file-utils-*:devel/desktop-file-utils

MODULES=	x11/kde devel/gettext

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.61
USE_LIBTOOL=	Yes

MODGNU_CONFIG_GUESS_DIRS=${MODKDE_CONFIG_GUESS_DIRS}

CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		LDADD="-pthread -lm"

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/src/kile/kile.kcfg

.include <bsd.port.mk>
