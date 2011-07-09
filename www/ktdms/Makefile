# $OpenBSD: Makefile,v 1.9 2011/07/09 00:14:46 robert Exp $

COMMENT=	web-based document management system

V=		3.5.1
DISTNAME=	ktdms-${V}
REVISION=	4
DISTFILES=	ktdms-src-oss-${V}.tgz

CATEGORIES=	www
HOMEPAGE=	http://www.knowledgetree.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kt-dms/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/ktdms
SUBST_VARS=	INSTDIR
WRKDIST=	${WRKDIR}/knowledgeTree-OSS

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-ldap \
		www/pear \
		databases/pear-DB \
		devel/pear-Log \
		archivers/zip \
		archivers/unzip \
		textproc/catdoc

do-install:
	@mv ${WRKDIR}/knowledgeTree-OSS ${PREFIX}/ktdms
	@chown -R ${SHAREOWN}.${SHAREGRP} ${PREFIX}/ktdms

.include <bsd.port.mk>
