# $OpenBSD: Makefile,v 1.2 2006/12/03 17:17:09 jasper Exp $

COMMENT=		"minimalistic console-based audio player"

DISTNAME=		herrie-1.0.1
CATEGORIES=		audio

HOMEPAGE=		http://g-rave.nl/projects/herrie/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= 		c crypto curses ogg ossaudio pthread ssl z


MODULES=		devel/gettext

MASTER_SITES=		http://www.stack.nl/~ed/projects/herrie/distfiles/ \
			http://www.il.fontys.nl/~ed/projects/herrie/distfiles/

LIB_DEPENDS=		mad.>=2::audio/libmad \
			id3tag.>=3::audio/libid3tag \
			sndfile.>=1::audio/libsndfile \
			vorbis.>=5,vorbisfile.>=4::audio/libvorbis \
			glib-2.0.>=1000.0,gthread-2.0.>=1000.0::devel/glib2 \
			curl.>=4::net/curl

USE_GMAKE=		Yes

NO_REGRESS=		Yes

MAKE_FILE=		GNUmakefile
WRKSRC=			${WRKDIST}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/herrie ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/herrie.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/nl/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/lang/nl.mo \
		${PREFIX}/share/locale/nl/LC_MESSAGES/herrie.mo

.include <bsd.port.mk>
