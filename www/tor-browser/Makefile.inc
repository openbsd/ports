# $OpenBSD: Makefile.inc,v 1.25 2020/05/05 20:12:20 sthen Exp $

MAINTAINER ?=		Caspar Schutijser <caspar@schutijser.com>
HOMEPAGE ?=		https://www.torproject.org
PERMIT_PACKAGE ?=	Yes
CATEGORIES =		www
BROWSER_NAME =		tor-browser
TB_VERSION =		9.0.10
TB_PREFIX =		tb

SUBST_VARS +=		BROWSER_NAME TB_VERSION

ADDON_NAME ?=
.if !empty(ADDON_NAME)
# Everything in this .if (most of the file) is for add-ons like
# torbutton, tor-launcher, ... tor-browser does its own thing.
.  if !defined(GUID)
ERRORS += "GUID missing: please set a GUID for ${ADDON_NAME}"
.  endif

# This should be set to Yes if the distfile for the addon is the .xpi
# file itself (noscript, https-everywhere)
DISTFILE_IS_XPI ?= 	No

TB_NAME ?=		${ADDON_NAME}-${V}
PKGNAME ?=		${TB_PREFIX}-${TB_NAME}
DISTNAME ?=		${TB_NAME}
WRKDIST =		${WRKDIR}/${TB_NAME}
ADDON_XPI_FILE ?=	${TB_NAME}.xpi
# Directory that the port's makexpi.sh script dumps into, if it has one
ADDON_SUBDIR ?=		pkg
ADDON_BUILDDIR ?= 	${WRKBUILD}/${ADDON_SUBDIR}

CONFIGURE_STYLE ?=	none
BUILD_DEPENDS +=	archivers/zip archivers/unzip
RUN_DEPENDS +=		www/tor-browser/browser

EXTDIR_ROOT ?=		lib/${BROWSER_NAME}
REAL_EXTDIR ?=		${PREFIX}/${EXTDIR_ROOT}/browser/extensions

SUBST_VARS +=		EXTDIR_ROOT GUID

.  if ${DISTFILE_IS_XPI:L} == "yes"
EXTRACT_SUFX = .xpi

do-extract:
	mkdir -p ${ADDON_BUILDDIR}

do-build:
	cp ${FULLDISTDIR}/${ADDON_XPI_FILE} ${ADDON_BUILDDIR}/${ADDON_XPI_FILE}
.  endif

do-install:
	${INSTALL_DATA_DIR} ${REAL_EXTDIR}
	${INSTALL_DATA} ${ADDON_BUILDDIR}/${ADDON_XPI_FILE} ${REAL_EXTDIR}/${GUID}.xpi

.endif
