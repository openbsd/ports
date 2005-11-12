# $OpenBSD: Makefile,v 1.15 2005/11/12 10:39:07 espie Exp $

COMMENT=	"GTK-based LDAP client"

DISTNAME=	gq-1.0beta1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	databases

HOMEPAGE=	http://biot.com/gq/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqclient/}

WANTLIB=	X11 Xft Xrender atk-1.0.0.0 \
		c crypto fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 m pango-1.0.0.0 pangox-1.0.0.0 \
		pangoxft-1.0.0.0 ssl z krb5 sasl2

MODULES=	devel/gettext

BUILD_DEPENDS=  :cyrus-sasl-*:security/cyrus-sasl2
LIB_DEPENDS=	gtk-x11-2.0.0.0,gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0::x11/gtk+2 \
		ldap.7,lber.7::databases/openldap \
		xml2::textproc/libxml

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.57
CONFIGURE_ARGS=	--with-ldap-prefix=${LOCALBASE} \
		--with-sasl-prefix=${LOCALBASE} \
		--with-kerberos-prefix=/usr
		
.include <bsd.port.mk>
