# $OpenBSD: Makefile,v 1.17 2006/08/03 20:04:52 espie Exp $

COMMENT=	"filemanager for X Window"

DISTNAME=	xnc-4.4.7
PKGNAME=	$(DISTNAME)p0
DISTFILES=	${DISTNAME}.src${EXTRACT_SUFX}
SHARED_LIBS=	xncaqua	1.0 \
		xncfive	1.0

CATEGORIES=	misc x11

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

HOMEPAGE=	http://xnc.dubna.su

MASTER_SITES=	${HOMEPAGE}/src/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext c jpeg m stdc++ z

LIB_DEPENDS=	tiff.>=36::graphics/tiff \
		png.>=4::graphics/png

USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=	autoconf old dest
AUTOCONF_VERSION=	2.13

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-x

FAKE_FLAGS=	LIBxncaqua_VERSION=${LIBxncaqua_VERSION} \
		LIBxncfive_VERSION=${LIBxncfive_VERSION} \
		DESTDIR=${WRKINST}

XNLAUNCHFILES=	.launch.menu .xnlaunch.ini graphs.gif ives.gif kill.gif \
		map.gif netscape.gif term.gif tnet.gif

pre-configure:
	@perl -pi -e 's,\@prefix\@,${PREFIX},g' ${WRKSRC}/xncdirs.h.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xnc
	cd ${WRKSRC}/.xlaunch && \
	${INSTALL_DATA} ${XNLAUNCHFILES} ${PREFIX}/share/examples/xnc
	cd ${PREFIX}/bin && \
	${STRIP} iedit ives vs xjpegroot xnc xnlaunch xncloader xncsetup
	sed -e 's,^ ,,' <${PREFIX}/man/man1/xnlaunch.1 >${PREFIX}/man/cat1/xnlaunch.0
	rm -f ${PREFIX}/man/man1/xnlaunch.1

.include <bsd.port.mk>
