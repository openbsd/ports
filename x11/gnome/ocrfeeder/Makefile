# $OpenBSD: Makefile,v 1.1.1.1 2014/08/14 20:02:28 ajacoutot Exp $

COMMENT=		OCR and DAR program

GNOME_PROJECT=		ocrfeeder
GNOME_VERSION=		0.8

CATEGORIES=		graphics textproc

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

MODPY_ADJ_FILES=	bin/ocrfeeder.in \
			bin/ocrfeeder-cli.in

BUILD_DEPENDS=		devel/py-gobject3 \
			graphics/goocanvas2 \
			graphics/py-Pillow,-sane \
			print/py-reportlab/reportlab \
			textproc/py-enchant \
			x11/gtk+3

RUN_DEPENDS=		devel/iso-codes \
			devel/py-gobject3 \
			graphics/goocanvas2 \
			graphics/py-Pillow,-sane \
			print/py-reportlab/reportlab \
			print/unpaper \
			textproc/py-enchant \
			textproc/py-lxml \
			x11/gtk+3

# OCR engine
RUN_DEPENDS +=		ocrad-*|tesseract-*|gocr-*:graphics/ocrad

MODGNOME_TOOLS= 	desktop-file-utils yelp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/ocrfeeder/util/constants.py.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	ln -s ../ocrfeeder/icons/ocrfeeder.svg \
		${PREFIX}/share/pixmaps/ocrfeeder.svg

.include <bsd.port.mk>
