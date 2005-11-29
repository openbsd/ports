# $OpenBSD: Makefile.inc,v 1.34 2005/11/29 15:40:47 naddy Exp $
DIST_SUBDIR?=	kde
HOMEPAGE?=	http://www.kde.org
.if defined(VERSION) && ${VERSION} == "3.1.95"
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@unstable/${VERSION}/src/@}
.elif defined(VERSION) && ${VERSION} == "3.2.0"
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@stable/3.2/src/@}
.elif defined(VERSION) && ${VERSION} == "3.3.0"
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@stable/3.3/src/@}
.elif defined(VERSION) && ${VERSION} == "3.4.0"
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@stable/3.4/src/@}
.elif defined(VERSION) && ${VERSION} == "3.5.0"
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@stable/3.5/src/@}
.else
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@stable/${VERSION}/src/@}
.endif
EXTRACT_SUFX?=	.tar.bz2
MASTER_SITES0=	${MASTER_SITE_KDE:=security_patches/}

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS?=	${NO_SHARED_ARCHS}
SHARED_ONLY=Yes
MODKDE_VERSION?=	3.1
MODULES?=	x11/kde

MODGNU_CONFIG_GUESS_DIRS?=	${MODKDE_CONFIG_GUESS_DIRS}

CONFIGURE_STYLE?=	autoconf
.if defined(MODKDE_VERSION) && (${MODKDE_VERSION} == "3.2.3" || ${MODKDE_VERSION} == "3.3.0" || ${MODKDE_VERSION} == "3.4" || ${MODKDE_VERSION} == "3.5")
AUTOCONF_VERSION?=	2.59
.endif
AUTOCONF_VERSION?=	2.57
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes

PORTHOME?=${WRKDIR}

CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
FAKE_FLAGS?=	TAR=tar DESTDIR=${WRKINST}
# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes
