# $OpenBSD: Makefile,v 1.11 2013/03/11 11:07:41 espie Exp $

COMMENT=	graphical tool to change Tux Paint's settings

DISTNAME=	tuxpaint-config-0.0.12
CATEGORIES=	games graphics

REVISION=	0

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB += X11 Xau Xdmcp Xext c m stdc++ pthread fltk paper

MODULES=	devel/gettext
LIB_DEPENDS=	x11/fltk \
		print/libpaper
RUN_DEPENDS=	games/tuxpaint

USE_GMAKE=	Yes
USE_GROFF =	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR} CXX=${CXX}

NO_TEST=	Yes

pre-configure:
	@rm -rf ${WRKSRC}/obj
	@perl -pi -e 's,@\$$\(CXX\),\$$\(CXX\),g' ${WRKSRC}/Makefile
	${SUBST_CMD} ${WRKSRC}/src/tuxpaint-config.1

.include <bsd.port.mk>
