# $OpenBSD: Makefile,v 1.12 2016/10/01 11:54:17 naddy Exp $

COMMENT =		complete, colourful suite of squared icons

V =			1.3
DISTNAME =		faenza-icon-theme_${V}
PKGNAME =		faenza-icon-theme-${V}
REVISION =		2
CATEGORIES =		x11

HOMEPAGE =		http://tiheum.deviantart.com/art/Faenza-Icons-173323228
MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=faenza-icon-theme/}
EXTRACT_SUFX =		.zip

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =		*
NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		x11/gtk+3,-guic

WRKDIST =		${WRKDIR}
ICONSDIR =		${PREFIX}/share/icons/

FAENZA_PACKAGES =	Faenza.tar.gz \
			Faenza-Ambiance.tar.gz \
			Faenza-Dark.tar.gz \
			Faenza-Darker.tar.gz \
			Faenza-Darkest.tar.gz \
			Faenza-Radiance.tar.gz

do-install:
	${INSTALL_DATA_DIR} ${ICONSDIR}

.for _targz in ${FAENZA_PACKAGES}
	cd ${WRKDIST} && tar -C ${ICONSDIR} -xzf ${_targz}
.endfor

post-install:
# Fix bogus permissions
	@chmod a-x ${ICONSDIR}/Faenz*/emblems/*/*.icon
	@chmod a-x ${ICONSDIR}/Faenz*/index.theme

.include <bsd.port.mk>
