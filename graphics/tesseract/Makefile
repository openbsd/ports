# $OpenBSD: Makefile,v 1.6 2010/10/22 19:31:43 ajacoutot Exp $

COMMENT-main=	OCR Engine developed at HP Labs
COMMENT-de=	German language data for tesseract
COMMENT-es=	Spanish language data for tesseract
COMMENT-fr=	French language data for tesseract
COMMENT-it=	Italian language data for tesseract
COMMENT-nl=	Dutch language data for tesseract
COMMENT-pt=	Portuguese (Brazilian) language data for tesseract

DISTNAME=	tesseract-3.00
CATEGORIES=	graphics textproc

PKGNAME-main=	${DISTNAME}
PKGNAME-de=	tesseract-de-2.00
PKGNAME-es=	tesseract-es-2.00
PKGNAME-fr=	tesseract-fr-2.00
PKGNAME-it=	tesseract-it-2.00
PKGNAME-nl=	tesseract-nl-2.00
PKGNAME-pt=	tesseract-pt-2.01

SHARED_LIBS +=  tesseract_api             0.0 # 3.0
SHARED_LIBS +=  tesseract_ccstruct        0.0 # 3.0
SHARED_LIBS +=  tesseract_ccutil          0.0 # 3.0
SHARED_LIBS +=  tesseract_classify        0.0 # 3.0
SHARED_LIBS +=  tesseract_cutil           0.0 # 3.0
SHARED_LIBS +=  tesseract_dict            0.0 # 3.0
SHARED_LIBS +=  tesseract_image           0.0 # 3.0
SHARED_LIBS +=  tesseract_main            0.0 # 3.0
SHARED_LIBS +=  tesseract_textord         0.0 # 3.0
SHARED_LIBS +=  tesseract_training        0.0 # 3.0
SHARED_LIBS +=  tesseract_viewer          0.0 # 3.0
SHARED_LIBS +=  tesseract_wordrec         0.0 # 3.0

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		tesseract-2.00.deu.tar.gz \
		tesseract-2.00.eng.tar.gz \
		tesseract-2.00.fra.tar.gz \
		tesseract-2.00.ita.tar.gz \
		tesseract-2.00.nld.tar.gz \
		tesseract-2.01.por.tar.gz \
		tesseract-2.00.spa.tar.gz

HOMEPAGE=	http://code.google.com/p/tesseract-ocr/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -de -es -fr -it -nl -pt

WANTLIB-main=	c jpeg m pthread stdc++ z tiff png

LIB_DEPENDS-main= ::graphics/tiff \
		::graphics/png

RUN_DEPENDS-de=	::${BASE_PKGPATH}
RUN_DEPENDS-es=	::${BASE_PKGPATH}
RUN_DEPENDS-fr=	::${BASE_PKGPATH}
RUN_DEPENDS-it=	::${BASE_PKGPATH}
RUN_DEPENDS-nl=	::${BASE_PKGPATH}
RUN_DEPENDS-pt=	::${BASE_PKGPATH}

PKG_ARCH-de=	*
PKG_ARCH-es=	*
PKG_ARCH-fr=	*
PKG_ARCH-it=	*
PKG_ARCH-nl=	*
PKG_ARCH-pt=	*

MASTER_SITES=	http://tesseract-ocr.googlecode.com/files/

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ccutil/debugwin.cpp

post-install:
	cp -R ${WRKDIR}/tessdata ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tesseract
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tesseract
	${INSTALL_DATA} ${WRKSRC}/README ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/tesseract
	${INSTALL_DATA} ${WRKSRC}/{eurotext.tif,phototest.tif} \
		${PREFIX}/share/examples/tesseract

.include <bsd.port.mk>
