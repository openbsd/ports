COMMENT=	graphical interface for GnuPG

DISTNAME=	gpa-0.11.0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security x11

HOMEPAGE=	https://www.gnupg.org/software/gpa/
SITES =		https://gnupg.org/ftp/gcrypt/gpa/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += assuan atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gpg-error gpgme gtk-3
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pthread
WANTLIB += z

CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/gettext,-runtime \
		security/gpgme \
		x11/gtk+3

.include <bsd.port.mk>
