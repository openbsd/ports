# $OpenBSD: Makefile,v 1.7 2003/05/27 23:49:13 naddy Exp $

COMMENT=	"GTK-based LDAP client"

VERSION=	0.6.0
DISTNAME=	gq-${VERSION}
CATEGORIES=	databases

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gqclient/}

HOMEPAGE=	http://biot.com/gq/

MAINTAINER=	Sebastian Stark <seb@todesplanet.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

BUILD_DEPENDS=  :cyrus-sasl-*:security/cyrus-sasl	# sasl.h only
LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		ldap,lber::databases/openldap \
		gdk_pixbuf::graphics/gdk-pixbuf

MODULES=	iconv

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.13
CONFIGURE_ARGS=	--with-ldap-prefix=${LOCALBASE} \
		--with-sasl-prefix=${LOCALBASE}

.include <bsd.port.mk>
