# $OpenBSD: Makefile,v 1.13 2014/08/30 07:30:58 ajacoutot Exp $

COMMENT=	graphical tool to change Tux Paint's settings

DISTNAME=	tuxpaint-config-0.0.13
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB += X11 Xau Xdmcp Xext c m stdc++ pthread fltk paper
WANTLIB += Xft Xinerama fontconfig

MODULES=	devel/gettext
LIB_DEPENDS=	x11/fltk \
		print/libpaper
RUN_DEPENDS=	games/tuxpaint

USE_GMAKE=	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR} CXX=${CXX}

NO_TEST=	Yes

pre-configure:
	@rm -rf ${WRKSRC}/obj
	@perl -pi -e 's,@\$$\(CXX\),\$$\(CXX\),g' ${WRKSRC}/Makefile
	${SUBST_CMD} ${WRKSRC}/src/tuxpaint-config.1

.include <bsd.port.mk>
