# $OpenBSD: Makefile,v 1.1.1.1 2001/09/19 20:45:55 jakob Exp $

COMMENT=	"GTK-based LDAP client"

VERSION=	0.4.0
DISTNAME=	gq-${VERSION}
PKGNAME=	${DISTNAME}
CATEGORIES=	databases
NEED_VERSION=	1.451

MASTER_SITES=	http://biot.com/gq/download/

HOMEPAGE=	http://www.biot.com/gq/

MAINTAINER=	Olivier Lemaire <olem@IDEALX.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

LIB_DEPENDS=		gtk.1.2::x11/gtk+ \
			ldap::databases/openldap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-ldap-prefix=${LOCALBASE}

.include <bsd.port.mk>
