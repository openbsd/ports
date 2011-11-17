# $OpenBSD: Makefile,v 1.2 2011/11/17 15:57:32 ajacoutot Exp $

COMMENT =		complete, colourful suite of squared icons

V =			1.2
DISTNAME =		faenza_icons_by_tiheum-d2v6x24
PKGNAME =		faenza-icon-theme-${V}
CATEGORIES =		x11
REVISION =		0

HOMEPAGE =		http://tiheum.deviantart.com/
MASTER_SITES =		http://www.deviantart.com/download/173323228/
EXTRACT_SUFX =		.zip

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

PKG_ARCH =		*
NO_BUILD =		Yes
NO_REGRESS =		Yes

# Add the corresponding "Inherits" theme
RUN_DEPENDS +=		x11/gnome/icon-theme

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
