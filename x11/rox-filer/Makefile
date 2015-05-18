# $OpenBSD: Makefile,v 1.61 2015/05/18 11:29:38 jasper Exp $

COMMENT=		GTK+-2 file manager with desktop features

DISTNAME=		rox-filer-2.11
CATEGORIES=		x11

HOMEPAGE=		http://roscidus.com/desktop/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rox/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext
RUN_DEPENDS=	misc/shared-mime-info
LIB_DEPENDS=	x11/gtk+2

NO_TEST=	Yes

INSTDATA=	AppRun Help Messages Options.xml ROX images style.css \
		subclasses .DirIcon

pre-configure:
	@perl -pi -e 's,/usr/local/share/Choices,${PREFIX}/share/rox/Choices,g' \
		${WRKSRC}/ROX-Filer/src/choices.c

do-build:
	@cd ${WRKSRC} && ${SETENV} MAKE="${MAKE_PROGRAM}" CC="${CC}" \
		CFLAGS="${CFLAGS}" CPPFLAGS="-I${X11BASE}/include" \
		with_platform="OpenBSD" ROX-Filer/AppRun --compile

do-install:
	rm ${WRKSRC}/ROX-Filer/src/*.orig
	${INSTALL_DATA_DIR} ${PREFIX}/rox/ROX-Filer
	${INSTALL_MAN} ${WRKSRC}/rox.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/rox.1 ${PREFIX}/man/man1/ROX-Filer.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/rox/Choices/MIME-types
	${INSTALL_SCRIPT} ${WRKSRC}/Choices/MIME-types/* \
		${PREFIX}/share/rox/Choices/MIME-types
	${INSTALL_PROGRAM} ${WRKSRC}/ROX-Filer/ROX-Filer ${PREFIX}/rox/ROX-Filer
.for i in ${INSTDATA}
	@cp -R ${WRKSRC}/ROX-Filer/$i ${PREFIX}/rox/ROX-Filer
.endfor
	@echo '#!/bin/sh' > ${PREFIX}/bin/rox
	@echo 'exec ${TRUEPREFIX}/rox/ROX-Filer/AppRun "$$@"' >> ${PREFIX}/bin/rox
	@chmod ugo+rx ${PREFIX}/bin/rox

.include <bsd.port.mk>
