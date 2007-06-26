# $OpenBSD: Makefile,v 1.10 2007/06/26 20:00:39 martynas Exp $

SHARED_ONLY=		Yes

COMMENT=		"implementation of the FreeDesktop Desktop Menu Spec"

DISTNAME=		gnome-menus-2.18.2
SHARED_LIBS +=	gnome-menu           3.9      # .3.9
CATEGORIES=		x11/gnome

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-menus/2.18/}
EXTRACT_SUFX=		.tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m rpcsvc stdc++ c pthread

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		glib-2.0.>=0::devel/glib2 \
			fam.>=0::sysutils/fam
RUN_DEPENDS=		:py-gtk2->=2.10.3:x11/py-gtk2

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm" \
			PYTHON="${MODPY_BIN}"

pre-configure:
	perl -pi -e 's,!!MODPY_BIN!!,${MODPY_BIN},' \
		${WRKSRC}/simple-editor/gmenu-simple-editor.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-menus
	mv ${WRKINST}${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-menus

.include <bsd.port.mk>
