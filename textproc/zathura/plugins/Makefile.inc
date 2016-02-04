# $OpenBSD: Makefile.inc,v 1.5 2016/02/04 18:08:17 juanfra Exp $

CATEGORIES ?=		textproc x11
MASTER_SITES ?=		https://pwmt.org/projects/zathura/plugins/download/

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes
PERMIT_DISTFILES_FTP ?=	Yes

RUN_DEPENDS ?=	devel/desktop-file-utils \
		textproc/zathura/core
LIB_DEPENDS +=	x11/girara
BUILD_DEPENDS ?=	textproc/zathura/core

MAKE_FLAGS ?=	VERBOSE=1 \
		DESKTOPPREFIX=${PREFIX}/share/applications

NO_TEST ?=	Yes
USE_GMAKE ?=	Yes

MODULES +=	devel/gettext
