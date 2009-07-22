# $OpenBSD: Makefile,v 1.4 2009/07/22 13:42:08 ajacoutot Exp $

COMMENT=	web-based document management system

V=		3.5.1
DISTNAME=	ktdms-${V}
PKGNAME=	${DISTNAME}p1
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

RUN_DEPENDS=	:php5-core-*:www/php5/core \
		:php5-mbstring-*:www/php5/extensions,-mbstring \
		:php5-gd-*:www/php5/extensions,-gd \
		:php5-mysql-*:www/php5/extensions,-mysql \
		:php5-ldap-*:www/php5/extensions,-ldap \
		:pear-*:www/pear \
		:pear-DB-*:databases/pear-DB \
		:pear-Log-*:devel/pear-Log \
		::archivers/zip \
		::archivers/unzip \
		::textproc/catdoc

do-install:
	@mv ${WRKDIR}/knowledgeTree-OSS ${PREFIX}/ktdms
	@chown -R ${SHAREOWN}.${SHAREGRP} ${PREFIX}/ktdms
	@${INSTALL_DATA} ${FILESDIR}/INSTALL ${PREFIX}/ktdms/docs
	@${INSTALL_DATA} ${FILESDIR}/README.chroot \
		${PREFIX}/ktdms/docs
	@perl -pi -e "s,%%INSTDIR%%,${INSTDIR}," \
		${PREFIX}/ktdms/docs/INSTALL

.include <bsd.port.mk>
