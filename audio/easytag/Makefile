# $OpenBSD: Makefile,v 1.5 2003/04/16 13:43:09 wilfried Exp $

COMMENT=		"MP3 ID3 tags editor"

DISTNAME=		easytag-0.27
CATEGORIES=		audio x11
HOMEPAGE=		http://easytag.sourceforge.net/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=easytag/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext
LIB_DEPENDS=		id3.3.8::audio/id3lib \
			FLAC.4::audio/flac \
			vorbis.1,vorbisfile.1::audio/libvorbis \
			gdk.1.2,gtk.1.2::x11/gtk+
BUILD_DEPENDS=		:help2man-*:devel/help2man

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/easytag
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/easytag
	${INSTALL_DATA} ${WRKSRC}/USERS-GUIDE ${PREFIX}/share/doc/easytag

.include <bsd.port.mk>
