# $OpenBSD: Makefile,v 1.11 2011/11/16 15:56:37 robert Exp $

COMMENT=	PHP OpenID implementation

V=		1.2.1
BASE_URL=	http://source.keyboard-monkeys.org

DISTNAME=	cid-${V}
PKGNAME=	community-id-${V}

REVISION=	7

CATEGORIES=	www security

HOMEPAGE=	${BASE_URL}/projects/show/communityid

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${BASE_URL}/attachments/download/110/

MODULES=	lang/php

# php-gd-*-!no_x11 because we need freetype support
RUN_DEPENDS=	php-gd-*-!no_x11:lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-gmp \
		lang/php/${MODPHP_VERSION},-mysqli

WRKDIST=	${WRKDIR}/communityid

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/communityid
SUBST_VARS=	INSTDIR BASE_URL

do-install:
	cp -Rp ${WRKBUILD} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} -type f -name \*.orig | xargs rm
	${INSTALL_DATA} ${FILESDIR}/communityid.conf \
		${INSTDIR}/communityid.conf.dist

.include <bsd.port.mk>
