COMMENT-main=		XML parsing library
COMMENT-python=		Python bindings for libxml

GNOME_VERSION=		2.14.5
GNOME_PROJECT=		libxml2

PKGNAME-main=		libxml-${GNOME_VERSION}
PKGNAME-python=		py3-libxml-${GNOME_VERSION}

REVISION-main=		0

SHARED_LIBS += xml2                      22.0 # 16.0.5

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE=		Yes

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MULTI_PACKAGES=		-main -python

LIB_DEPENDS-main=	archivers/xz \
			converters/libiconv

WANTLIB-main += c iconv lzma m z

RUN_DEPENDS-main=

LIB_DEPENDS-python=	${BASE_PKGPATH},-main=${GNOME_VERSION}

WANTLIB-python += xml2

CONFIGURE_ARGS=		-Dlegacy=enabled

# XXX needs libhistory
CONFIGURE_ARGS +=	-Dhistory=disabled
CONFIGURE_ARGS +=	-Dreadline=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-configure:
	sed -e 's,@PREFIX@,${PREFIX},' <${FILESDIR}/rebuild >${WRKBUILD}/rebuild

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/libxml2
	${INSTALL_SCRIPT} ${WRKBUILD}/rebuild ${PREFIX}/share/libxml2/

.include <bsd.port.mk>
