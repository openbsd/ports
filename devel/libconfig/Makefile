# $OpenBSD: Makefile,v 1.2 2007/09/23 17:07:21 merdely Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.1.3
PKGNAME=		${DISTNAME}p0

SHARED_LIBS=		config		4.3 \
			config++	4.3

CATEGORIES=		devel

HOMEPAGE=		http://www.hyperrealm.com/libconfig/libconfig.html

MAINTAINER=		Will Maier <willmaier@ml1.net>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.hyperrealm.com/libconfig/

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
