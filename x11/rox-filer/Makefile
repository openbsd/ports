# $OpenBSD: Makefile,v 1.9 2002/10/29 19:48:59 naddy Exp $

COMMENT=		"gtk file manager with desktop features"

VERSION=		1.2.2
DISTNAME=		rox-${VERSION}
PKGNAME=		rox-filer-${VERSION}
ROXBASE=		rox-base-1.0.2
CATEGORIES=		x11

HOMEPAGE=		http://rox.sourceforge.net/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rox/}

DISTFILES=		${DISTNAME}.tgz ${ROXBASE}.tgz

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gdk_pixbuf::graphics/gdk-pixbuf \
		xml2::textproc/libxml

FILE_TO_PATCH=	${WRKDIR}/${DISTNAME}/ROX-Filer/src/choices.c

post-patch:
	@sed -e s:/usr/local/share/Choices:${PREFIX}/share/rox/Choices: \
		${FILE_TO_PATCH} > ${FILE_TO_PATCH}.tmp && \
		mv ${FILE_TO_PATCH}.tmp ${FILE_TO_PATCH}
	@rm -r ${WRKDIR}/${ROXBASE}/Choices/MIME-icons/CVS
	@rm -r ${WRKDIR}/${ROXBASE}/Choices/MIME-info/CVS
	@rm -r ${WRKDIR}/${ROXBASE}/Choices/MIME-types/CVS

do-build:
	@cd ${WRKSRC} && ${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" \
		ROX-Filer/AppRun --compile

NO_REGRESS=	Yes

do-install:
# base install
	${INSTALL_DATA_DIR} ${PREFIX}/share/rox/Choices/MIME-icons
	${INSTALL_DATA} ${WRKDIR}/${ROXBASE}/Choices/MIME-icons/* ${PREFIX}/share/rox/Choices/MIME-icons
	${INSTALL_DATA_DIR} ${PREFIX}/share/rox/Choices/MIME-info
	${INSTALL_DATA} ${WRKDIR}/${ROXBASE}/Choices/MIME-info/* ${PREFIX}/share/rox/Choices/MIME-info
	${INSTALL_DATA_DIR} ${PREFIX}/share/rox/Choices/MIME-types
	${INSTALL_SCRIPT} ${WRKDIR}/${ROXBASE}/Choices/MIME-types/* ${PREFIX}/share/rox/Choices/MIME-types
# rox-filer install
	@rm -f ${WRKSRC}/ROX-Filer/src/*.orig
	${INSTALL_DATA_DIR} ${PREFIX}/rox
	${INSTALL_MAN} ${WRKSRC}/rox.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/rox.1 ${PREFIX}/man/man1/ROX-Filer.1
	@(cd ${WRKSRC}/ROX-Filer/src && make clean)
	@cp -R ${WRKSRC}/ROX-Filer ${PREFIX}/rox
	@echo '#!/bin/sh' > ${PREFIX}/bin/rox
	@echo 'exec /usr/local/rox/ROX-Filer/AppRun "$$@"' >> ${PREFIX}/bin/rox
	@chmod ugo+rx ${PREFIX}/bin/rox

.include <bsd.port.mk>
