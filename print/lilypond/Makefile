# $OpenBSD: Makefile,v 1.1.1.1 2006/10/29 19:27:12 kili Exp $
#
# Credits to Matt Jibson. He did the initial work on this port and many
# tools it depends on.

COMMENT=	"LilyPond - music notation for everyone"
COMMENT-docs=	"LilyPond documentation"

DISTNAME=	lilypond-2.8.7
DISTNAME-docs=	lilypond-2.8.7-1.documentation
VERSION=	${DISTNAME:S,lilypond-,,}
PKGNAME-docs=	lilypond-docs-${VERSION}
CATEGORIES=	print

DISTFILES=	${DISTNAME}.tar.gz ${DISTNAME-docs}.tar.bz2:0
EXTRACT_ONLY=	${DISTNAME}.tar.gz

MULTI_PACKAGES=	-docs
SUBPACKAGE?=

DOCDIR=		${PREFIX}/share/doc/lilypond/${VERSION}

HOMEPAGE=	http://lilypond.org/web/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes

MASTER_BASE=		http://download.linuxaudio.org/lilypond/
MASTER_SITES=		${MASTER_BASE}v${VERSION:C,\.[0-9]*$,,}/
MASTER_SITES0=		${MASTER_BASE}binaries/documentation/

# We don't use the standard autoconf mechanisms from the ports
# system, because it doesn't work for lilypond. Instead, we use
# autogen.sh and add AUTOCONV_VERSION to the environment.
AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_SCRIPT=	autogen.sh
CONFIGURE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			PYTHON=${MODPY_BIN} \
			FLEXLEXER_PATH=/usr/include/g++
CONFIGURE_ARGS+=	--with-ncsb-dir=${LOCALBASE}/lib/X11/fonts/ghostscript
USE_GMAKE=		Yes
MAKE_FILE=		GNUmakefile

SHARED_ONLY=		Yes

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=	*
.else
WANTLIB=	c fontconfig freetype m stdc++ X11
MODULES=        devel/gettext lang/python
LIB_DEPENDS=	guile.>=15,guile-ltdl.>=1::lang/guile \
		glib-2.0.>=1000,gmodule-2.0.>=1000,gobject-2.0.>=1000::devel/glib2 \
		pango-1.0.>=1200,pangoft2-1.0.>=1200::devel/pango
RUN_DEPENDS=	::print/ghostscript/gnu
.endif

BUILD_DEPENDS= 	::print/mftrace \
		::devel/bison \
		::devel/autoconf/${AUTOCONF_VERSION} \
		${RUN_DEPENDS}

SUBST_VARS+=	VERSION

NO_REGRESS=	Yes

post-extract:
	mkdir -p ${WRKDIR}/docs
	cd ${WRKDIR}/docs && \
		bzip2 -cd ${FULLDISTDIR}/${DISTNAME-docs}.tar.bz2 | tar xf -

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lilypond/${VERSION}
	umask 022 && cp -R ${WRKDIR}/docs/* \
		${PREFIX}/share/doc/lilypond/${VERSION}

.include <bsd.port.mk>
