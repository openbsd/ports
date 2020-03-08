# $OpenBSD: Makefile,v 1.14 2020/03/08 22:38:50 ajacoutot Exp $

COMMENT=		OCR and DAR program

GNOME_PROJECT=		ocrfeeder
GNOME_VERSION=		0.8.3

CATEGORIES=		graphics textproc

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache yelp
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			graphics/goocanvas2 \
			graphics/py-sane${MODPY_FLAVOR} \
			print/py-reportlab${MODPY_FLAVOR} \
			textproc/py-enchant${MODPY_FLAVOR} \
			textproc/py-odfpy \
			x11/gtk+3

RUN_DEPENDS=		devel/iso-codes \
			devel/py-gobject3${MODPY_FLAVOR} \
			graphics/goocanvas2 \
			graphics/py-sane${MODPY_FLAVOR} \
			print/py-reportlab${MODPY_FLAVOR} \
			print/unpaper \
			textproc/gtkspell3 \
			textproc/py-enchant${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-odfpy \
			x11/gtk+3

# OCR engine
RUN_DEPENDS +=		ocrad-*|tesseract-*|gocr-*:graphics/ocrad

CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/ocrfeeder/util/constants.py.in
# XXX missing in tarball
	cp ${FILESDIR}/org.gnome.OCRFeeder.appdata.xml.in.in \
		${WRKSRC}/resources/org.gnome.OCRFeeder.appdata.xml.in

.include <bsd.port.mk>
