# $OpenBSD: Makefile,v 1.5 2001/07/13 14:03:16 reinhard Exp $

COMMENT=	"filemanager for X Window"

DISTNAME=	xnc-4.4.4
DISTFILES=      ${DISTNAME}.src${EXTRACT_SUFX}
CATEGORIES=	misc x11
NEED_VERSION=	1.419

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

HOMEPAGE=	http://xnc.dubna.su

MASTER_SITES=	${HOMEPAGE}/src/ 

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    jpeg.62.::graphics/jpeg \
                png.2.::graphics/png 

USE_X11=	Yes

CONFIGURE_STYLE=	gnu old

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib" 
CONFIGURE_ARGS=	--with-x 

XNLAUNCHFILES=	.launch.menu .xnlaunch.ini graphs.gif ives.gif kill.gif \
		map.gif netscape.gif term.gif tnet.gif

post-patch:
	perl -pi -e 's,\@prefix\@,${PREFIX},g' ${WRKSRC}/xncdirs.h.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xnc
	cd ${WRKSRC}/.xlaunch && \
	${INSTALL_DATA} ${XNLAUNCHFILES} ${PREFIX}/share/examples/xnc
	cd ${PREFIX}/bin && \
	${STRIP} es ives vs xjpegroot xnc xnlaunch xncsetup

.include <bsd.port.mk>
