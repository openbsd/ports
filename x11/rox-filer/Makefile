# $OpenBSD: Makefile,v 1.23 2004/12/19 17:36:33 alek Exp $

COMMENT=		"gtk file manager with desktop features"

VERSION=		2.1.3
DISTNAME=		rox-${VERSION}
PKGNAME=		rox-filer-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://rox.sourceforge.net/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xcursor Xext Xft Xinerama Xrender \
			atk-1.0.0.0 c fontconfig freetype glib-2.0.0.0 \
			gmodule-2.0.0.0 gobject-2.0.0.0 iconv intl m \
			pango-1.0.0.0 pangox-1.0.0.0 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rox/}

DISTFILES=		${DISTNAME}.tgz

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk-x11-2.0.0.9,gdk_pixbuf-2.0.0.9,gdk-x11-2.0.0.9::x11/gtk+2 \
		xml2::textproc/libxml
RUN_DEPENDS=	::misc/shared-mime-info

FILE_TO_PATCH=  ${WRKSRC}/ROX-Filer/src/choices.c

NO_REGRESS=	Yes

post-patch:
	@sed -e s:/usr/local/share/Choices:${PREFIX}/share/rox/Choices: \
		${FILE_TO_PATCH} > ${FILE_TO_PATCH}.tmp && \
		mv ${FILE_TO_PATCH}.tmp ${FILE_TO_PATCH}

do-build:
	@cd ${WRKSRC} && ${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" \
		ROX-Filer/AppRun --compile

do-install:
	@rm -f ${WRKSRC}/ROX-Filer/src/*.orig
	${INSTALL_DATA_DIR} ${PREFIX}/rox
	${INSTALL_MAN} ${WRKSRC}/rox.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/rox.1 ${PREFIX}/man/man1/ROX-Filer.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/rox/Choices/MIME-types
	${INSTALL_SCRIPT} ${WRKSRC}/Choices/MIME-types/* ${PREFIX}/share/rox/Choices/MIME-types
	@(cd ${WRKSRC}/ROX-Filer/src && make clean)
	@cp -R ${WRKSRC}/ROX-Filer ${PREFIX}/rox
	@echo '#!/bin/sh' > ${PREFIX}/bin/rox
	@echo 'exec /usr/local/rox/ROX-Filer/AppRun "$$@"' >> ${PREFIX}/bin/rox
	@chmod ugo+rx ${PREFIX}/bin/rox

.include <bsd.port.mk>
