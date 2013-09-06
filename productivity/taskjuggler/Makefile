# $OpenBSD: Makefile,v 1.26 2013/09/06 22:18:03 sthen Exp $

COMMENT=	project management tool
BROKEN-i386=	self-checks fail with 64-bit time_t

DISTNAME=	taskjuggler-2.4.1
REVISION=	7

CATEGORIES=	productivity

SHARED_LIBS=	taskjuggler	4.0

HOMEPAGE=	http://www.taskjuggler.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  ICE SM X11 Xext Xrender Xfixes Xt art_lgpl_2 c expat fam
WANTLIB += fontconfig freetype idn m png pthread stdc++ util xcb z
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
AUTOCONF_VERSION=2.61
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS} \
		--enable-dependency-tracking \
		--disable-final \
		--with-docdir=${PREFIX}/share/examples/taskjuggler/
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		ac_cv_prog_DOCBOOK_TO_MAN=no

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS=	x11/kde/pim3

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
