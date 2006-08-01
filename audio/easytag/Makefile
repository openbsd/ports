# $OpenBSD: Makefile,v 1.9 2006/08/01 10:50:19 espie Exp $

COMMENT=		"MP3 ID3 tags editor"

DISTNAME=		easytag-0.30
CATEGORIES=		audio x11
HOMEPAGE=		http://easytag.sourceforge.net/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		glib gmodule ogg X11 Xext Xi c m stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=easytag/}
EXTRACT_SUFX=		.tar.bz2

PATCHFILES=		patch_easytag_030_030a.diff \
			patch_easytag_030a_030b.diff \
			patch_easytag_030b_030c.diff \
			patch_easytag_030c_030d.diff
PATCH_DIST_STRIP=	-p1

MODULES=		devel/gettext
LIB_DEPENDS=		id3.>=3.8::audio/id3lib \
			FLAC.>=4::audio/flac \
			vorbis.>=1,vorbisfile.>=1::audio/libvorbis \
			gdk.>=1.2,gtk.>=1.2::x11/gtk+
BUILD_DEPENDS=		:help2man-*:devel/help2man

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/easytag
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/easytag
	${INSTALL_DATA} ${WRKSRC}/USERS-GUIDE ${PREFIX}/share/doc/easytag

.include <bsd.port.mk>
