# $OpenBSD: Makefile,v 1.3 2002/03/21 01:17:31 kevlo Exp $

COMMENT=	"GTK-based LDAP client"

VERSION=	0.5.0
DISTNAME=	gq-${VERSION}
PKGNAME=	${DISTNAME}
CATEGORIES=	databases
NEED_VERSION=	1.515

MASTER_SITES=	${HOMEPAGE}/download/

HOMEPAGE=	http://biot.com/gq/

MAINTAINER=	Olivier Lemaire <olem@IDEALX.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		ldap,lber::databases/openldap

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-ldap-prefix=${LOCALBASE}

.include <bsd.port.mk>
