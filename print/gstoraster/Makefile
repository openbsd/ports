# $OpenBSD: Makefile,v 1.2 2011/07/06 16:07:16 ajacoutot Exp $

COMMENT =		filter to convert PostScript or PDF to cups raster format

DISTNAME =		gstoraster-1.03
REVISION =		0

CATEGORIES =		print

HOMEPAGE =		http://cupsaddons.sourceforge.net/

MAINTAINER = 		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cupsaddons/filter-gstoraster/}

RUN_DEPENDS =		print/ghostscript/gnu>=9.02

PKG_ARCH =		*
NO_BUILD =		Yes
NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}

pre-configure:
	${SUBST_CMD} ${WRKDIST}/gstoraster

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/cups/filter
	${INSTALL_SCRIPT} ${WRKDIST}/gstoraster ${PREFIX}/libexec/cups/filter
	cd ${PREFIX}/libexec/cups/filter && ln -s gstoraster pstoraster
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/gstoraster
	${INSTALL_DATA} ${WRKDIST}/gstoraster.convs ${PREFIX}/share/examples/gstoraster
	${INSTALL_DATA} ${WRKDIST}/gstoraster.pdf ${PREFIX}/share/doc/gstoraster

.include <bsd.port.mk>
