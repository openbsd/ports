# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:41 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		binary compatible alternative to Apache mod_fastcgi
DISTNAME=		mod_fcgid.2.2
PKGNAME=		ap2-mod_fcgid-2.2
REVISION=		2

CATEGORIES=		www

HOMEPAGE=		http://fastcgi.coremail.cn/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mod-fcgid/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS+=		www/apache-httpd

USE_LIBTOOL=		Yes
NO_TEST=		Yes

pre-configure:
			@perl -pi -e 's,!!PREFIX!!,${PREFIX},' \
        			${WRKSRC}/Makefile

.include <bsd.port.mk>
