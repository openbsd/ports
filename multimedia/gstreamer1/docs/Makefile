COMMENT=		GStreamer documentation

DISTNAME=		gstreamer-docs-${V}
PKGNAME=		gstreamer1-docs-${V}

SITES=			${SITE_GST:=gstreamer-docs/}

NO_BUILD=		Yes
NO_TEST=		Yes

# override Makefile.inc
CONFIGURE_STYLE=	None

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gtk-doc/html
	cp -R ${WRKSRC}/devhelp/books/GStreamer ${PREFIX}/share/gtk-doc/html/GStreamer-${API}

.include <bsd.port.mk>
