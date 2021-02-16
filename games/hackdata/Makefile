# $OpenBSD: Makefile,v 1.19 2021/02/16 08:40:06 espie Exp $

COMMENT =	common data for the nethack/slash ports
V =		3.6.6
DISTNAME =	nethack-$V
PKGNAME =	hackdata-$V
CATEGORIES =	games

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=nethack/} \
		ftp://ftp.nethack.org/pub/nethack/nh${V:S/.//g}/src/ \
		ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU:=nethack/}
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
