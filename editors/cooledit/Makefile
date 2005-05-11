# $OpenBSD: Makefile,v 1.19 2005/05/11 19:27:34 espie Exp $

COMMENT=	"easy to use, graphical editor"

CATEGORIES=	editors
MASTER_SITES=	${HOMEPAGE}
HOMEPAGE= 	http://cooledit.sourceforge.net/ 
DISTNAME=	cooledit-3.17.7
PKGNAME=	${DISTNAME}p1

MAINTAINER=	Marc Espie <espie@openbsd.org>

FLAVORS=	python
FLAVOR?=

PYTHON_VER=	2.2
WANTLIB=	X11 Xext Xpm c m util

.if ${FLAVOR:L:Mpython}
LIB_DEPENDS+=	python${PYTHON_VER}.0.0:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
CFLAGS+=	-pthread
CONFIGURE_ENV+=	PYTHON_VER=${PYTHON_VER}
WANTLIB+=	pthread
.else
CONFIGURE_ENV+=	NOPYTHON=Yes
.endif

MODULES=		gettext
USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		XTERM_CMD=xterm LDFLAGS="-L${LOCALBASE}/lib"

# XXX temporary until we have full internationalization support
#CONFIGURE_ENV+=		ac_cv_header_wchar_h=no

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static --disable-mail-author

PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_CDROM=Yes

pre-configure:
	@perl -pi -e "s,!!PYTHON_VER!!,${PYTHON_VER},g" ${WRKSRC}/configure
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g" ${WRKSRC}/configure

.include <bsd.port.mk>
