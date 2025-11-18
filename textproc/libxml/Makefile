COMMENT=		XML parsing library

GNOME_VERSION=		2.15.1
GNOME_PROJECT=		libxml2
PKGNAME=		libxml-${GNOME_VERSION}
REVISION=		1

SHARED_LIBS += xml2                      22.1 # 16.1.1

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE=		Yes

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		converters/libiconv

WANTLIB += c iconv m z

CONFIGURE_ARGS=		-Dlegacy=enabled

# XXX circular dependency: xsltproc (textproc/libxslt) -> textproc/libxml
CONFIGURE_ARGS +=	-Ddocs=disabled

# Python bindings are planned to be removed in the 2.16 release;
# circular dependency: libxml -> doxygen -> git -> xmlto -> libxml
CONFIGURE_ARGS +=	-Dpython=disabled

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
