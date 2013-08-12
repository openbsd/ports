# $OpenBSD: Makefile,v 1.22 2013/08/12 04:11:21 robert Exp $

COMMENT=		web-based double opt-in newsletter manager

DISTNAME=		phplist-2.10.19
REVISION=		1

CATEGORIES=		www

HOMEPAGE=		http://www.phplist.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=phplist/}
EXTRACT_SUFX=		.tgz

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=		${VARBASE}/www
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
