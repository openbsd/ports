# $OpenBSD: Makefile,v 1.4 2008/10/16 17:00:52 ajacoutot Exp $

COMMENT=	graphical tool to change Tux Paint's settings

DISTNAME=	tuxpaint-config-0.0.11
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB=	X11 Xext c m stdc++ Xau Xdmcp

MODULES=	devel/gettext
LIB_DEPENDS=	fltk.>=6::x11/fltk \
		paper::print/libpaper
RUN_DEPENDS=	::games/tuxpaint

USE_X11=	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR}

NO_REGRESS=	Yes

pre-configure:
	@rm -rf ${WRKSRC}/obj
	@perl -pi -e 's,@\$$\(CXX\),\$$\(CXX\),g' ${WRKSRC}/Makefile
	${SUBST_CMD} ${WRKSRC}/src/tuxpaint-config.1

.include <bsd.port.mk>
