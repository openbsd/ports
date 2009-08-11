# $OpenBSD: Makefile,v 1.43 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=		GTK+-2 file manager with desktop features

DISTNAME=		rox-filer-2.8
PKGNAME=		${DISTNAME}p3
CATEGORIES=		x11

HOMEPAGE=		http://roscidus.com/desktop/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += xml2 z pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rox/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::misc/shared-mime-info
LIB_DEPENDS=	glade-2.0::devel/libglade2

USE_X11=	Yes
USE_GMAKE=	Yes

NO_REGRESS=	Yes

INSTDATA=	AppRun Help Messages Options.xml ROX images style.css \
		subclasses .DirIcon

pre-configure:
	@perl -pi -e 's,/usr/local/share/Choices,${PREFIX}/share/rox/Choices,g' \
		${WRKSRC}/ROX-Filer/src/choices.c

do-build:
	@cd ${WRKSRC} && ${SETENV} MAKE="${MAKE_PROGRAM}" CC="${CC}" CFLAGS="${CFLAGS}" \
		CPPFLAGS="-I${X11BASE}/include" with_platform="OpenBSD" \
		ROX-Filer/AppRun --compile

do-install:
	@rm -f ${WRKSRC}/ROX-Filer/src/*.orig
	${INSTALL_DATA_DIR} ${PREFIX}/rox/ROX-Filer
	${INSTALL_MAN} ${WRKSRC}/rox.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/rox.1 ${PREFIX}/man/man1/ROX-Filer.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/rox/Choices/MIME-types
	${INSTALL_SCRIPT} ${WRKSRC}/Choices/MIME-types/* \
		${PREFIX}/share/rox/Choices/MIME-types
.for p in ROX-Filer ROX-Filer.dbg
	${INSTALL_PROGRAM} ${WRKSRC}/ROX-Filer/$p ${PREFIX}/rox/ROX-Filer
.endfor
.for i in ${INSTDATA}
	@cp -R ${WRKSRC}/ROX-Filer/$i ${PREFIX}/rox/ROX-Filer
.endfor
	@echo '#!/bin/sh' > ${PREFIX}/bin/rox
	@echo 'exec /usr/local/rox/ROX-Filer/AppRun "$$@"' >> ${PREFIX}/bin/rox
	@chmod ugo+rx ${PREFIX}/bin/rox

.include <bsd.port.mk>
