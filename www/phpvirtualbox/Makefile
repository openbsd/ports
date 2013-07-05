# $OpenBSD: Makefile,v 1.4 2013/07/05 09:34:35 jasper Exp $

COMMENT=	web-based VirtualBox front-end

V=		4.2-4
DISTNAME=	phpvirtualbox-${V}
PKGNAME=	phpvirtualbox-${V:S/-/./}
EXTRACT_SUFX=	.zip
REVISION=	0

CATEGORIES=	www sysutils

HOMEPAGE=	http://code.google.com/p/phpvirtualbox/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://phpvirtualbox.googlecode.com/files/

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
