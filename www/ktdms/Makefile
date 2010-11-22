# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT=	web-based document management system

V=		3.5.1
DISTNAME=	ktdms-${V}
REVISION=	2
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

RUN_DEPENDS=	www/php5/core \
		www/php5/extensions,-mbstring \
		www/php5/extensions,-gd \
		www/php5/extensions,-mysql \
		www/php5/extensions,-ldap \
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
