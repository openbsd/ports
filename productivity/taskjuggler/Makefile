# $OpenBSD: Makefile,v 1.1.1.1 2006/03/11 14:06:31 sturm Exp $

COMMENT=	"project management tool"

DISTNAME=	taskjuggler-2.2.0
CATEGORIES=	productivity
SHARED_LIBS=	taskjuggler	3.3

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
		vcard z

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/kde
MODKDE_VERSION=	3.4
USE_LIBTOOL=	Yes

USE_GMAKE=	Yes

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS} \
		--enable-dependency-tracking \
		--disable-final
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::x11/kde/pim3

.include <bsd.port.mk>
