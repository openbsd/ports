# $OpenBSD: Makefile,v 1.28 2019/09/26 21:57:42 sthen Exp $

COMMENT-main=	base classes for common PHP tasks
COMMENT-utils=	utilities for managing pear extensions

VERSION=	1.10.9
DISTNAME=	go-pear-${VERSION}
PKGNAME=	pear-${VERSION}
DISTFILES=	go-pear-${VERSION}{go-pear}.phar
EXTRACT_SUFX=	.phar
EXTRACT_ONLY=
PKGNAME-main=	pear-${VERSION}
PKGNAME-utils=	pear-utils-${VERSION}
WRKDIST=	${WRKDIR}
CATEGORIES=	www devel

HOMEPAGE=	https://pear.php.net/
MASTER_SITES=	https://github.com/pear/pearweb_phars/raw/v${VERSION}/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -utils

MODULES=		lang/php
BUILD_DEPENDS=		${_MODPHP_BUILD_DEPENDS}
RUN_DEPENDS-main=	www/pear,-utils

# Most of pear have to live in /var/www where apache is chroot'ed to.
PREFIX-main=	${VARBASE}/www
PREFIX-utils=	/usr/local

NO_TEST=	Yes

BUILD_DEPENDS=	devel/p5-Expect
SUBST_VARS=	MODPHP_BIN

do-extract:
	cp ${FULLDISTDIR}/go-pear-${VERSION}.phar ${WRKSRC}/go-pear.phar

do-build:
	cd ${WRKSRC}; perl ${FILESDIR}/run-go-pear ${WRKINST} ${PREFIX} ${MODPHP_BIN}

do-install:
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
	@rm ${PREFIX}/bin/{pear,peardev,pecl}{.beforesubst,.orig}*
	@rmdir ${WRKINST}${PREFIX-main}/pear/{cfg,htdocs}

.include <bsd.port.mk>
