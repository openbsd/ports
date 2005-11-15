# $OpenBSD: Makefile,v 1.16 2005/11/15 13:23:15 wilfried Exp $

COMMENT=	"GTK-based LDAP client"

DISTNAME=	gq-1.0beta1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	databases

HOMEPAGE=	http://biot.com/gq/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqclient/}

WANTLIB=	X11 atk-1.0.0.0 c cairo crypto fontconfig freetype glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 krb5 m pango-1.0.0.0 \
		pangocairo-1.0.0.0 pangoft2-1.0.0.0 sasl2 ssl z

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
