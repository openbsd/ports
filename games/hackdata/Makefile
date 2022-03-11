COMMENT =	common data for the nethack/slash ports
V =		3.6.6
DISTNAME =	nethack-$V
PKGNAME =	hackdata-$V
CATEGORIES =	games

MASTER_SITES =	https://www.nethack.org/download/$V/

DISTFILES =	nethack-${V:S/.//g}-src.tgz

MAINTAINER =	Marc Espie <espie@openbsd.org>

#		GPL
PERMIT_PACKAGE =	Yes

EXTRACT_ONLY =
NHDIR = NetHack-NetHack-$V_Released
WRKDIST = ${WRKDIR}/${NHDIR}

post-extract:
	@cd ${WRKDIR} && ${TAR} zxqf ${FULLDISTDIR}/${DISTFILES} \
	${NHDIR}/win/X11/ibm.bdf \
	${NHDIR}/win/X11/nh10.bdf \

do-build:
	cd ${WRKSRC}/win/X11 && \
	${X11BASE}/bin/bdftopcf ibm.bdf | /usr/bin/gzip > ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf | /usr/bin/gzip > nh10.pcf.gz

NO_TEST=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/win/X11/ibm.pcf.gz ${PREFIX}/share/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/win/X11/nh10.pcf.gz ${PREFIX}/share/fonts/hack

.include <bsd.port.mk>
