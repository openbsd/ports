# $OpenBSD: Makefile,v 1.6 2003/04/03 14:29:36 sturm Exp $

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

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		ldap,lber::databases/openldap \
		gdk_pixbuf::graphics/gdk-pixbuf

MODULES=	iconv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-ldap-prefix=${LOCALBASE}

.include <bsd.port.mk>
