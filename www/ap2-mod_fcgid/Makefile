# $OpenBSD: Makefile,v 1.6 2011/11/27 11:08:48 pirofti Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS+=		www/apache-httpd

USE_LIBTOOL=		Yes
NO_REGRESS=		Yes

pre-configure:
			@perl -pi -e 's,!!PREFIX!!,${PREFIX},' \
        			${WRKSRC}/Makefile

.include <bsd.port.mk>
