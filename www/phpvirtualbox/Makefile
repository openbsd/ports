# $OpenBSD: Makefile,v 1.16 2015/06/05 06:00:23 robert Exp $

COMMENT=	web-based VirtualBox front-end

V=		4.3-3
DISTNAME=	phpvirtualbox-${V}
PKGNAME=	phpvirtualbox-${V:S/-/./}
EXTRACT_SUFX=	.zip
REVISION=	0

CATEGORIES=	www sysutils

HOMEPAGE=	http://sourceforge.net/projects/phpvirtualbox/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpvirtualbox/}

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
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
