COMMENT =		optional packages for PARI/GP

CATEGORIES=		math

# packages are almost never updated, but keep the date just in case
DISTNAME =		pari-data-20220729
DISTFILES =		pari-elldata-20210301{elldata}.tgz \
			pari-galdata-20080412{galdata}.tgz \
			pari-galpol-20180625{galpol}.tgz \
			pari-nflistdata-20220729{nflistdata}.tgz \
			pari-nftables-20080929{nftables}.tgz \
			pari-seadata-20090618{seadata}.tgz \
			pari-seadata-big-20170418{seadata-big}.tar

HOMEPAGE=		https://pari.math.u-bordeaux.fr/

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =			https://pari.math.u-bordeaux.fr/pub/pari/packages/

RUN_DEPENDS =		math/pari

CONFIGURE_STYLE =	none

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pari
	cp -rf ${WRKDIR}/data/* ${PREFIX}/share/pari
	cp -rf ${WRKDIR}/nftables ${PREFIX}/share/pari

.include <bsd.port.mk>
