# $OpenBSD: Makefile,v 1.31 2006/09/18 10:21:49 espie Exp $

COMMENT=		"gtk file manager with desktop features"

VERSION=		2.4.1
DISTNAME=		rox-${VERSION}
PKGNAME=		rox-filer-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://rox.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c fontconfig freetype z \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 m \
			atk-1.0.0.0 pango-1.0.0.0 pangocairo-1.0.0.0 \
			pangoft2-1.0.0.0 cairo

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rox/}
EXTRACT_SUFX=	.tgz

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		${RUN_DEPENDS}
LIB_DEPENDS=	gtk-x11-2.0.>=0.9,gdk_pixbuf-2.0.>=0.9,gdk-x11-2.0.>=0.9::x11/gtk+2 \
		xml2::textproc/libxml
RUN_DEPENDS=	::misc/shared-mime-info

FILE_TO_PATCH=  ${WRKSRC}/ROX-Filer/src/choices.c

USE_X11=	Yes
NO_REGRESS=	Yes

INSTDATA=	AppRun Help Messages Options.xml ROX images style.css \
		subclasses .DirIcon

pre-configure:
	@sed -e s:/usr/local/share/Choices:${PREFIX}/share/rox/Choices: \
		${FILE_TO_PATCH} > ${FILE_TO_PATCH}.tmp && \
		mv ${FILE_TO_PATCH}.tmp ${FILE_TO_PATCH}

do-build:
	@cd ${WRKSRC} && ${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" \
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
