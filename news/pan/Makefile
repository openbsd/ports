# $OpenBSD: Makefile,v 1.3 2003/02/03 13:53:06 fgsch Exp $

COMMENT=	"powerful Gtk+2 newsreader"

VER=		0.13.3
DISTNAME=	pan-${VER}
CATEGORIES=	news x11
MASTER_SITES=	http://pan.rebelbase.com/download/releases/${VER}/SOURCE/

LIB_DEPENDS=	gtk-x11-2.0.0.5,gdk-x11-2.0.0.5::x11/gtk+2 \
		xml2.6.22::textproc/libxml

HOMEPAGE=	http://pan.rebelbase.com/

MAINTAINER=	Federico G. Schwindt <fgsch@openbsd.org>

MODULES=	gettext

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-gtkspell
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DOCS=		faq.html pan_acccelerators.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pan
	cd ${WRKSRC}/docs && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/pan

.include <bsd.port.mk>
