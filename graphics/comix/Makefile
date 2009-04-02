# $OpenBSD: Makefile,v 1.12 2009/04/02 06:22:33 kili Exp $

COMMENT=	gtk2 comic book viewer

DISTNAME=	comix-4.0.2
PKGNAME =	${DISTNAME}p1
CATEGORIES=	graphics

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=comix/}

MODULES=	lang/python
PY_FLAVOR=	python${MODPY_VERSION}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:py-Imaging-*-${PY_FLAVOR}:graphics/py-Imaging,${PY_FLAVOR} \
		::x11/py-gtk2 \
		::misc/shared-mime-info \
		::devel/gconf2 \
		:desktop-file-utils-*:devel/desktop-file-utils

NO_REGRESS=	Yes

post-extract:
		${GUNZIP_CMD} ${WRKSRC}/comix.1.gz ${WRKSRC}/mime/comicthumb.1.gz

do-build:
		${SUBST_CMD} -c ${WRKSRC}/src/comix.py ${WRKSRC}/comix

do-install:
		cd ${WRKSRC} && ${MODPY_BIN} install.py --dir ${PREFIX} install
		# schemas files are always installed under LOCALBASE, not PREFIX
		${INSTALL_DATA_DIR} ${WRKINST}/${LOCALBASE}/share/schemas/comix/
		${INSTALL_DATA} ${WRKSRC}/mime/comicbook.schemas \
			${WRKINST}/${LOCALBASE}/share/schemas/comix/

PKG_ARCH=	*

.include <bsd.port.mk>
