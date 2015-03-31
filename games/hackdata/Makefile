# $OpenBSD: Makefile,v 1.16 2015/03/31 09:44:48 ajacoutot Exp $

COMMENT =	common data for the nethack/slash ports
V =		3.4.3
DISTNAME =	nethack-$V
PKGNAME =	hackdata-$V
CATEGORIES =	games
REVISION =	0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=nethack/} \
		ftp://ftp.nethack.org/pub/nethack/nh${V:S/.//g}/src/ \
		ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU:=nethack/}
DISTFILES =	nethack-${V:S/.//g}-src.tgz

MAINTAINER =	Marc Espie <espie@openbsd.org>

#		GPL
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_ONLY =

post-extract:
	@cd ${WRKDIR} && ${TAR} zxqf ${FULLDISTDIR}/${DISTFILES} \
	nethack-$V/win/X11/ibm.bdf \
	nethack-$V/win/X11/nh10.bdf \
	nethack-$V/doc/Guidebook.txt

do-build:
	cd ${WRKSRC}/win/X11 && \
	${X11BASE}/bin/bdftopcf ibm.bdf | /usr/bin/gzip > ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf | /usr/bin/gzip > nh10.pcf.gz

NO_TEST=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nethack
	@${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt ${PREFIX}/share/doc/nethack
	${INSTALL_DATA} ${WRKSRC}/win/X11/ibm.pcf.gz ${PREFIX}/share/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/win/X11/nh10.pcf.gz ${PREFIX}/share/fonts/hack

.include <bsd.port.mk>
