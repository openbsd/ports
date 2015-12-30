# $OpenBSD: Makefile,v 1.34 2015/12/30 10:43:04 ajacoutot Exp $

COMMENT=	project management tool
BROKEN-i386=	self-checks fail with 64-bit time_t
BROKEN-hppa=	self-checks fail with 64-bit time_t
BROKEN-powerpc=	self-checks fail with 64-bit time_t

DISTNAME=	taskjuggler-2.4.3

CATEGORIES=	productivity

SHARED_LIBS=	taskjuggler	4.0

HOMEPAGE=	http://www.taskjuggler.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  ICE SM X11 Xext Xrender Xfixes Xt art_lgpl_2 c expat fam
WANTLIB += fontconfig freetype idn m png pthread stdc++ util xcb z
WANTLIB += X11-xcb Xdamage Xxf86vm drm glapi pthread-stubs xcb-dri2
WANTLIB += xcb-glx
WANTLIB += ${KDE}/DCOP ${KDE}/kabc ${KDE}/kcal ${KDE}/kdecore
WANTLIB += ${KDE}/kdefx ${KDE}/kdeprint ${KDE}/kdesu ${KDE}/kdeui
WANTLIB += ${KDE}/khtml ${KDE}/kio ${KDE}/kmime ${KDE}/ktnef
WANTLIB += ${KDE}/kresources ${KDE}/ktexteditor ${KDE}/kwalletclient
WANTLIB += ${KDE}/vcard

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/kde devel/gettext
MODKDE_VERSION=	3.4
USE_GMAKE=	Yes

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.63
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS} \
		--enable-dependency-tracking \
		--disable-final \
		--with-docdir=${PREFIX}/share/examples/taskjuggler/
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		ac_cv_prog_DOCBOOK_TO_MAN=no

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS=	x11/kde/pim3

# XXX tries building the documentation from XML, which fails
NO_TEST=	Yes

# broken test file
post-extract:
	@rm ${WRKSRC}/TestSuite/Syntax/Errors/Timezone.tjp

pre-configure:
	@sed -i "s,\@PACKAGES_DIR\@Examples/,\@PACKAGES_DIR\@," \
		${WRKSRC}/Examples/*/Makefile.in \
		${WRKSRC}/Examples/*/*/Makefile.in

.include <bsd.port.mk>
