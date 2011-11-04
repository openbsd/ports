# $OpenBSD: Makefile,v 1.38 2011/11/04 08:16:23 jasper Exp $

COMMENT=	GTK-based LDAP client

DISTNAME=	gq-1.0beta1
REVISION=	16
CATEGORIES=	databases sysutils

HOMEPAGE=	http://biot.com/gq/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqclient/}

WANTLIB=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo crypto expat \
		fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 krb5 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread-stubs sasl2 ssl xcb z xml2 ldap>=7 \
		lber>=7 gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 \
		GL gthread-2.0 pthread xcb-render xcb-shm

MODULES=	devel/gettext

BUILD_DEPENDS=  security/cyrus-sasl2
RUN_DEPENDS+=	devel/desktop-file-utils
LIB_DEPENDS=	x11/gtk+2 \
		databases/openldap \
		textproc/libxml

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.57
CONFIGURE_ARGS=	--with-ldap-prefix=${LOCALBASE} \
		--with-sasl-prefix=${LOCALBASE} \
		--with-kerberos-prefix=/usr
CFLAGS+=	-DLDAP_DEPRECATED

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gq.desktop

.include <bsd.port.mk>
