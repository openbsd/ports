# $OpenBSD: Makefile,v 1.9 2003/01/03 14:00:56 reinhard Exp $

COMMENT=	"filemanager for X Window"

DISTNAME=	xnc-4.4.7
DISTFILES=      ${DISTNAME}.src${EXTRACT_SUFX}
CATEGORIES=	misc x11

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
NO_REGRESS=	Yes

CONFIGURE_STYLE=	gnu old dest

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-x

XNLAUNCHFILES=	.launch.menu .xnlaunch.ini graphs.gif ives.gif kill.gif \
		map.gif netscape.gif term.gif tnet.gif

post-patch:
	@perl -pi -e 's,\@prefix\@,${PREFIX},g' ${WRKSRC}/xncdirs.h.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xnc
	cd ${WRKSRC}/.xlaunch && \
	${INSTALL_DATA} ${XNLAUNCHFILES} ${PREFIX}/share/examples/xnc
	cd ${PREFIX}/bin && \
	${STRIP} iedit ives iview xjpegroot xnc xnlaunch xncloader xncsetup
	sed -e 's,^ ,,' <${PREFIX}/man/man1/xnlaunch.1 >${PREFIX}/man/cat1/xnlaunch.0
	rm -f ${PREFIX}/man/man1/xnlaunch.1

.include <bsd.port.mk>
