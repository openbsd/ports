COMMENT=		web-based VirtualBox front-end
	
GH_PROJECT=		phpvirtualbox
GH_ACCOUNT=		phpvirtualbox
GH_TAGNAME=		5.2-1
PKGNAME=		phpvirtualbox-${GH_TAGNAME:S/-/./}
REVISION=		0

CATEGORIES=		www sysutils

HOMEPAGE=		http://sourceforge.net/projects/phpvirtualbox/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>
# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=		lang/php
RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-soap

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/phpvirtualbox
TINSTDIR=		${TRUEPREFIX}/phpvirtualbox
SUBST_VARS=		INSTDIR TINSTDIR

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	rm ${INSTDIR}/{Dockerfile,docker-compose.yml,.{docker,git}ignore}

.include <bsd.port.mk>
