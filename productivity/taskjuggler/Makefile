# $OpenBSD: Makefile,v 1.12 2008/05/22 11:48:05 sturm Exp $

COMMENT=	project management tool

DISTNAME=	taskjuggler-2.4.1
CATEGORIES=	productivity
SHARED_LIBS=	taskjuggler	4.0

HOMEPAGE=	http://www.taskjuggler.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	DCOP ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c jpeg \
		kabc kcal kdecore kdefx kdeprint kdesu kdeui khtml kio kjs \
		kparts kresources ktexteditor ktnef kutils kwalletclient \
		m pcre pcreposix png pthread \
		stdc++ util vcard z iconv intl idn fam rpcsvc

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

BUILD_DEPENDS=	::x11/kde/pim3
RUN_DEPENDS=	::x11/kde/pim3 \
		:desktop-file-utils-*:devel/desktop-file-utils

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
