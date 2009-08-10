# $OpenBSD: Makefile,v 1.31 2009/08/10 06:31:08 kili Exp $

COMMENT=	easy to use, graphical editor

CATEGORIES=	editors
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE= 	ftp://ftp.ibiblio.org/pub/Linux/apps/editors/X/cooledit/
DISTNAME=	cooledit-3.17.14
PKGNAME=	${DISTNAME}p5

SHARED_LIBS=	Cw	1.0

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=	python
FLAVOR?=

PYTHON_VER=	2.4
WANTLIB=	X11 Xau Xdmcp c pthread-stubs util xcb
USE_LIBTOOL=	Yes

.if ${FLAVOR:L:Mpython}
LIB_DEPENDS+=	python${PYTHON_VER}:python->=${PYTHON_VER},<2.5:lang/python/${PYTHON_VER}
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
