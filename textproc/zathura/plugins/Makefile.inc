# $OpenBSD: Makefile.inc,v 1.4 2015/08/25 14:23:25 sthen Exp $

CATEGORIES ?=		textproc x11
MASTER_SITES ?=		https://pwmt.org/projects/zathura/plugins/download/

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes
PERMIT_DISTFILES_FTP ?=	Yes

RUN_DEPENDS ?=	devel/desktop-file-utils
LIB_DEPENDS +=	x11/girara
BUILD_DEPENDS ?=	textproc/zathura/core

MAKE_FLAGS ?=	VERBOSE=1 \
		DESKTOPPREFIX=${PREFIX}/share/applications

NO_TEST ?=	Yes
USE_GMAKE ?=	Yes

MODULES +=	devel/gettext
