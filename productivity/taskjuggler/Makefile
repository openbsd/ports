# $OpenBSD: Makefile,v 1.8 2007/05/09 11:37:29 bernd Exp $

COMMENT=	"project management tool"

DISTNAME=	taskjuggler-2.3.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	productivity
SHARED_LIBS=	taskjuggler	3.4

HOMEPAGE=	http://www.taskjuggler.org/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	DCOP ICE SM X11 Xext Xrender art_lgpl_2 c jpeg kabc kcal \
		kdecore kdefx kdeprint kdesu kdeui khtml kio kresources \
		ktexteditor ktnef kwalletclient m png pthread stdc++ util \
		vcard z iconv idn

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/kde
MODKDE_VERSION=	3.4
USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS} \
		--enable-dependency-tracking \
		--disable-final \
		--with-docdir=${PREFIX}/share/examples/taskjuggler/
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		ac_cv_prog_DOCBOOK_TO_MAN=no

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::x11/kde/pim3

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
