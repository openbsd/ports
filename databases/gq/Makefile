# $OpenBSD: Makefile,v 1.25 2007/11/08 16:55:26 simon Exp $

COMMENT=	GTK-based LDAP client

DISTNAME=	gq-1.0beta1
PKGNAME=	${DISTNAME}p7
CATEGORIES=	databases

HOMEPAGE=	http://biot.com/gq/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqclient/}

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo crypto expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		krb5 m pango-1.0 pangocairo-1.0 pangoft2-1.0 png sasl2 ssl z

MODULES=	devel/gettext

BUILD_DEPENDS=  :cyrus-sasl-*:security/cyrus-sasl2
LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		ldap.>=7,lber.>=7::databases/openldap \
		xml2::textproc/libxml

USE_X11=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.57
CONFIGURE_ARGS=	--with-ldap-prefix=${LOCALBASE} \
		--with-sasl-prefix=${LOCALBASE} \
		--with-kerberos-prefix=/usr
		
.include <bsd.port.mk>
