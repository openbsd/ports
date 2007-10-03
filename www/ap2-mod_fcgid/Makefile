# $OpenBSD: Makefile,v 1.1.1.1 2007/10/03 18:19:47 merdely Exp $

SHARED_ONLY=		Yes

COMMENT=		binary compatible alternative to Apache mod_fastcgi
DISTNAME=		mod_fcgid.2.2
PKGNAME=		ap2-mod_fcgid-2.2

CATEGORIES=		www

HOMEPAGE=		http://fastcgi.coremail.cn/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mod-fcgid/}

MAINTAINER=		Paul Irofti <bulibuta@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS+=		:apache-httpd-*:www/apache-httpd

USE_LIBTOOL=		Yes
NO_REGRESS=		Yes

pre-configure:
			@perl -pi -e 's,!!PREFIX!!,${PREFIX},' \
        			${WRKSRC}/Makefile

.include <bsd.port.mk>
