# $OpenBSD: Makefile,v 1.21 2005/10/23 09:52:21 alek Exp $

COMMENT=	"easy to use, graphical editor"

CATEGORIES=	editors
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE= 	ftp://ftp.ibiblio.org/pub/Linux/apps/editors/X/cooledit/
DISTNAME=	cooledit-3.17.14

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=	python
FLAVOR?=

PYTHON_VER=	2.3
WANTLIB=	X11 c util

.if ${FLAVOR:L:Mpython}
LIB_DEPENDS+=	python${PYTHON_VER}.0.0:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
CONFIGURE_ENV+=	PYTHON_VER=${PYTHON_VER} LOCALBASE=${LOCALBASE}
WANTLIB+=	pthread m 
.else
CONFIGURE_ENV+=	NOPYTHON=Yes
.endif

MODULES=	devel/gettext
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	XTERM_CMD=xterm LDFLAGS="-L${LOCALBASE}/lib"

# XXX temporary until we have full internationalization support
#CONFIGURE_ENV+=		ac_cv_header_wchar_h=no

CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--enable-static --disable-mail-author

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes

.include <bsd.port.mk>
