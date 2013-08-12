# $OpenBSD: Makefile,v 1.6 2013/08/12 04:11:22 robert Exp $

COMMENT=	web-based VirtualBox front-end

V=		4.2-4
DISTNAME=	phpvirtualbox-${V}
PKGNAME=	phpvirtualbox-${V:S/-/./}
EXTRACT_SUFX=	.zip
REVISION=	2

CATEGORIES=	www sysutils

HOMEPAGE=	https://code.google.com/p/phpvirtualbox/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://phpvirtualbox.googlecode.com/files/

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-soap

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/phpvirtualbox
TINSTDIR=	${TRUEPREFIX}/phpvirtualbox
SUBST_VARS=	INSTDIR TINSTDIR

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	${SUBST_CMD} -c ${FILESDIR}/phpvirtualbox.conf \
		${INSTDIR}/phpvirtualbox.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
