# $OpenBSD: Makefile,v 1.13 2007/09/15 18:01:01 simon Exp $

COMMENT=	common data for the nethack/slash ports
V=3.4.3
DISTNAME=	nethack-$V
PKGNAME=	hackdata-$V
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nethack/} \
		ftp://ftp.nethack.org/pub/nethack/nh${V:S/.//g}/src/ \
		ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU:=nethack/}
DISTFILES=	nethack-${V:S/.//g}-src.tgz

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_ONLY=

post-extract:
	@cd ${WRKDIR} && ${TAR} zxqf ${FULLDISTDIR}/${DISTFILES} \
	nethack-$V/win/X11/ibm.bdf \
	nethack-$V/win/X11/nh10.bdf \
	nethack-$V/doc/Guidebook.txt

do-build:
	cd ${WRKSRC}/win/X11 && \
	${X11BASE}/bin/bdftopcf ibm.bdf | /usr/bin/gzip > ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf | /usr/bin/gzip > nh10.pcf.gz

NO_REGRESS=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nethack
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt ${PREFIX}/share/doc/nethack
	${INSTALL_DATA} ${WRKSRC}/win/X11/ibm.pcf.gz ${PREFIX}/lib/X11/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/win/X11/nh10.pcf.gz ${PREFIX}/lib/X11/fonts/hack

.include <bsd.port.mk>
