# $OpenBSD: Makefile,v 1.117 2014/03/28 13:30:18 ajacoutot Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.28.5
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}
REVISION=		11

SHARED_LIBS=		gtop-2.0	9.0	# .9.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Xau c kvm pcre pthread glib-2.0

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS= 	gi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	--without-libgtop-smp
CONFIGURE_ENV=		GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			ac_cv_header_sys_mount_h=yes

.ifdef DEBUG
CONFIGURE_ARGS+=	--enable-debug
CPPFLAGS+=		-DDEBUG \
			-DLIBGTOP_ENABLE_DEBUG \
			-DLIBGTOP_FATAL_WARNINGS
.endif

### rm at next release
MODGNOME_TOOLS +=	gtk-doc
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			x11/gnome/common
do-configure:
	ln -sf ${LOCALBASE}/bin/aclocal-${AUTOMAKE_VERSION} ${WRKDIR}/bin/aclocal
	ln -sf ${LOCALBASE}/bin/automake-${AUTOMAKE_VERSION} ${WRKDIR}/bin/automake
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${CONFIGURE_ENV} ./autogen.sh ${CONFIGURE_ARGS}
###

.include <bsd.port.mk>
