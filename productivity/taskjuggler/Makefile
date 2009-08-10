# $OpenBSD: Makefile,v 1.14 2009/08/10 06:34:09 kili Exp $

COMMENT=	project management tool

DISTNAME=	taskjuggler-2.4.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	productivity
SHARED_LIBS=	taskjuggler	4.0

HOMEPAGE=	http://www.taskjuggler.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += DCOP ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c
WANTLIB += fam iconv idn intl jpeg kabc kdecore kdefx kdeprint
WANTLIB += kdesu kdeui khtml kio kjs kparts kresources ktexteditor
WANTLIB += kutils kwalletclient m pcre pcreposix png pthread pthread-stubs
WANTLIB += rpcsvc stdc++ util vcard xcb z

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/kde
MODKDE_VERSION=	3.4
USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.61
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS} \
		--enable-dependency-tracking \
		--disable-as-needed \
		--disable-final \
		--with-docdir=${PREFIX}/share/examples/taskjuggler/
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		ac_cv_prog_DOCBOOK_TO_MAN=no

LIB_DEPENDS=	kcal,kmime,ktnef::x11/kde/pim3
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

# XXX tries building the documentation from XML, which fails
NO_REGRESS=	Yes

# broken test file
post-extract:
	@rm ${WRKSRC}/TestSuite/Syntax/Errors/Timezone.tjp

pre-configure:
	@perl -pi -e "s,\@PACKAGES_DIR\@Examples/,\@PACKAGES_DIR\@," \
		${WRKSRC}/Examples/*/Makefile.in \
		${WRKSRC}/Examples/*/*/Makefile.in

.include <bsd.port.mk>
