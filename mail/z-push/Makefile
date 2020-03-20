# $OpenBSD: Makefile,v 1.59 2020/03/20 16:44:25 naddy Exp $

COMMENT=	ActiveSync protocol implementation

V=		2.4.1
DISTNAME=	z-push-${V}
REVISION=	3

CATEGORIES=	mail www

HOMEPAGE=	http://z-push.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://nerd.hu/distfiles/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/z-push
TINSTDIR=	${TRUEPREFIX}/z-push
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	mail/kopano/core,-mapi \
		lang/php/${MODPHP_VERSION},-imap

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/src/* ${INSTDIR}
	find ${INSTDIR} -type f -name \*.orig -delete
	find ${INSTDIR} -name config.php -exec mv {} {}.dist \;
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/z-push.conf \
		${INSTDIR}/z-push.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
