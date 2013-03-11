# $OpenBSD: Makefile,v 1.23 2013/03/11 11:37:55 espie Exp $

COMMENT=	project management tool

DISTNAME=	taskjuggler-2.4.1
REVISION=	6

CATEGORIES=	productivity

SHARED_LIBS=	taskjuggler	4.0

HOMEPAGE=	http://www.taskjuggler.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += DCOP ICE SM X11 Xext Xrender art_lgpl_2 c
WANTLIB += idn jpeg kabc kdecore kdefx kdeprint
WANTLIB += kdesu kdeui khtml kio kjs kparts kresources ktexteditor
WANTLIB += kutils kwalletclient m pcre pcreposix png pthread
WANTLIB += stdc++ util vcard xcb z kcal kmime ktnef
WANTLIB += GL Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu Xrandr
WANTLIB += Xt Xxf86vm drm expat fontconfig freetype lcms mng

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/kde devel/gettext
MODKDE_VERSION=	3.4
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.61
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS} \
		--enable-dependency-tracking \
		--disable-final \
		--with-docdir=${PREFIX}/share/examples/taskjuggler/
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		ac_cv_prog_DOCBOOK_TO_MAN=no

LIB_DEPENDS=	x11/kde/pim3
RUN_DEPENDS=	devel/desktop-file-utils

# XXX tries building the documentation from XML, which fails
NO_TEST=	Yes

# broken test file
post-extract:
	@rm ${WRKSRC}/TestSuite/Syntax/Errors/Timezone.tjp

pre-configure:
	@perl -pi -e "s,\@PACKAGES_DIR\@Examples/,\@PACKAGES_DIR\@," \
		${WRKSRC}/Examples/*/Makefile.in \
		${WRKSRC}/Examples/*/*/Makefile.in

.include <bsd.port.mk>
