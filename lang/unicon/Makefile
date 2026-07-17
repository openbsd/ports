COMMENT=	programming language with generators, X11 graphics and more

CATEGORIES=	lang
GH_ACCOUNT =	uniconproject
# XXX switched to commit because I'm upstreaming patches
# GH_TAGNAME =	13.2
DISTNAME =	unicon-13.3beta1
GH_COMMIT =	0b8f99c2affe981f87639fc2577d2a68d05739ba
GH_PROJECT =	unicon

HOMEPAGE=	https://unicon.sourceforge.net/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c crypto ssl pthread m GL GLU X11
WANTLIB += 	SDL iodbc jpeg ogg openal png vorbis vorbisfile
WANTLIB +=	${COMPILER_LIBCXX} Xft freetype alut ftgl sqlite3

LIB_DEPENDS +=	audio/freealut
LIB_DEPENDS +=	audio/libvorbis
LIB_DEPENDS +=	audio/openal
LIB_DEPENDS +=	databases/iodbc 
LIB_DEPENDS +=	databases/sqlite3
LIB_DEPENDS +=	devel/sdl 
# not quite sure how it chooses its libraries
#LIB_DEPENDS +=	devel/smpeg
LIB_DEPENDS +=	graphics/ftgl
LIB_DEPENDS +=	graphics/jpeg
LIB_DEPENDS +=	graphics/png

USE_GMAKE =	Yes

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--with-freetype=${X11BASE}
CONFIGURE_ARGS +=	--with-Xft=${X11BASE}
# this is broken and expects GzFile and FILE* to be the same type ?
CONFIGURE_ARGS +=	--without-zlib
# we don't have this, so avoid it entirely
CONFIGURE_ARGS +=	--without-voip


# in case something breaks
#CONFIGURE_ARGS +=	--enable-verbosebuild

CONFIGURE_ENV += CPPFLAGS='-I${LOCALBASE}/include'
CONFIGURE_ENV += LDFLAGS='-L${LOCALBASE}/lib'
DEBUG_PACKAGES =	${BUILD_PACKAGES}

AUTOCONF_VERSION =	2.71

ALL_TARGET =	default

TEST_TARGET =	Test Test-iconc

post-install:
	${INSTALL_MAN} ${WRKDIST}/doc/unicon/unicon.1 ${PREFIX}/man/man1
	cd ${PREFIX}/man/man1 && ln unicon.1 icont.1
	cd ${PREFIX}/man/man1 && ln unicon.1 iconc.1

.include <bsd.port.mk>
