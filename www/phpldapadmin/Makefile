# $OpenBSD: Makefile,v 1.20 2009/10/01 12:28:34 ajacoutot Exp $ 

COMMENT=	web-based LDAP browser to manage LDAP servers

VERSION=	1.1.0.7
DISTNAME=	phpldapadmin-${VERSION}
PKGNAME=	${DISTNAME}p5
CATEGORIES=	www
HOMEPAGE=	http://phpldapadmin.sourceforge.net/	

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpldapadmin/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpldapadmin
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-ldap-*:www/php5/extensions,-ldap \
		:php5-mhash-*:www/php5/extensions,-mhash

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/phpldapadmin
	cd ${WRKBUILD} && tar -cf - * .* | \
		tar -C ${PREFIX}/phpldapadmin -xf -
	find ${PREFIX}/phpldapadmin -name '*.orig' | xargs -r rm -f
	chown -R root:daemon ${PREFIX}/phpldapadmin

.include <bsd.port.mk>
