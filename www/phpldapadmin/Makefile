# $OpenBSD: Makefile,v 1.24 2010/11/22 08:36:53 espie Exp $ 

COMMENT=	web-based LDAP browser to manage LDAP servers

VERSION=	1.2.0.5
DISTNAME=	phpldapadmin-${VERSION}
CATEGORIES=	www
HOMEPAGE=	http://phpldapadmin.sourceforge.net/	

REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpldapadmin/}
EXTRACT_SUFX=	.tgz

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpldapadmin
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	www/php5/extensions,-ldap \
		www/php5/extensions,-mhash

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/phpldapadmin
	cd ${WRKBUILD} && tar -cf - * .* | \
		tar -C ${PREFIX}/phpldapadmin -xf -
	find ${PREFIX}/phpldapadmin -name '*.orig' | xargs -r rm -f
	chown -R root:daemon ${PREFIX}/phpldapadmin

.include <bsd.port.mk>
