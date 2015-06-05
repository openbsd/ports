# $OpenBSD: Makefile,v 1.21 2015/06/05 06:00:22 robert Exp $

COMMENT-main=	base classes for common PHP tasks
COMMENT-utils=	utilities for managing pear extensions

VERSION=	1.9.5
REVISION=	0
DISTNAME=	pear-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-utils=	pear-utils-${VERSION}
CATEGORIES=	www devel
REVISION-utils=	0

HOMEPAGE=	http://pear.php.net/
MASTER_SITES=	http://spacehopper.org/mirrors/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=		-main -utils

MODULES=		lang/php
BUILD_DEPENDS=		${_MODPHP_BUILD_DEPENDS}
RUN_DEPENDS-main=	www/pear,-utils

# Most of pear have to live in /var/www where apache is chroot'ed to.
PREFIX-main=	${VARBASE}/www
PREFIX-utils=	/usr/local

NO_BUILD=	Yes
NO_TEST=	Yes

SUBST_VARS=	MODPHP_BIN

pre-fake:
	@perl -pi -e "s,%%BUNDLEDIR%%,${WRKSRC}/go-pear-bundle,g" ${WRKSRC}/go-pear
	@perl -pi -e "s,%%PREFIX%%,${WRKINST}${PREFIX-main},g" ${WRKSRC}/go-pear
	@perl -pi -e "s,%%TMPDIR%%,${TMPDIR}/go-pear,g" ${WRKSRC}/go-pear

do-install:
	@${MODPHP_BIN} -q ${WRKSRC}/go-pear

	@mv ${WRKINST}${PREFIX-main}/bin ${WRKINST}${PREFIX-utils}/
	@mv ${WRKINST}${PREFIX-main}/share/doc/pear ${WRKINST}${PREFIX-utils}/share/doc/
	@rm -rf ${WRKINST}${PREFIX-main}/share ${WRKINST}${PREFIX-main}/etc

	@find ${WRKINST}${PREFIX-main} -name "*.php" -exec perl -pi -e "s,${WRKINST},,g" {} \;
	@find ${WRKINST}${PREFIX-utils}/bin -type f -exec perl -pi -e "s,${WRKINST},,g" {} \;

	@for _f in patch-usr_local_bin_pear patch-usr_local_bin_peardev \
		patch-usr_local_bin_pecl patch-var_www_pear_lib_PEAR_Config_php; do \
		patch -d ${WRKINST} < ${FILESDIR}/$${_f}; done
	@find ${WRKINST}/usr/local/bin -type f -exec ${SUBST_CMD} {} \;
	@perl -pi -e "s,OPENBSD_PEAR_ROOT,'${PREFIX-main}/pear',g" \
		${WRKINST}${PREFIX-main}/pear/lib/PEAR/Config.php
	@touch ${WRKINST}${PREFIX-main}/pear/.lock
	@touch ${WRKINST}${PREFIX-main}/pear/lib/.lock

.include <bsd.port.mk>
