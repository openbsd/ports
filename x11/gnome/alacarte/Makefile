# $OpenBSD: Makefile,v 1.7 2008/10/01 19:30:03 ajacoutot Exp $

COMMENT=		easy GNOME menu editing tool

GNOME_PROJECT=		alacarte
GNOME_VERSION=		0.11.4
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/gettext \
			:python-expat-${MODPY_VERSION}*:lang/python/${MODPY_VERSION},-expat \
			:fam-*:sysutils/fam \
			:py-gtk2->=2.8.6:x11/py-gtk2 \
			:gnome-menus-*:x11/gnome/menus \
			:py-gnome-*:x11/gnome/py-gnome \
			::textproc/scrollkeeper

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

pre-configure:
	perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g; \
		s,!!SYSCONFDIR!!,${SYSCONFDIR},g' ${WRKSRC}/Alacarte/util.py

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
