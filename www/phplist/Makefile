# $OpenBSD: Makefile,v 1.17 2012/06/16 11:37:20 sthen Exp $

COMMENT=		web-based double opt-in newsletter manager

DISTNAME=		phplist-2.10.18

CATEGORIES=		www

HOMEPAGE=		http://www.phplist.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=phplist/}
EXTRACT_SUFX=		.tgz

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/lists
SUBST_VARS=		INSTDIR

MODULES=		lang/php
RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-mysql \
			lang/php/${MODPHP_VERSION},-imap \
			net/pear-HTTP-Request

do-install:
	@-test ! -d ${INSTDIR} && mkdir ${INSTDIR}
	@cd ${WRKDIST}/public_html/lists; tar cf - . | (cd ${INSTDIR}; tar xf -)
	@rm ${INSTDIR}/index.html
	@mv ${INSTDIR}/config/config.php ${INSTDIR}/config/config.php.dist

.include <bsd.port.mk>
