# $OpenBSD: Makefile,v 1.28 2001/10/24 12:52:42 espie Exp $

COMMENT=		"X11 toolkit, libraries"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.458
VERSION=		2.2.1
DISTNAME=		kdelibs-${VERSION}
DIST_SUBDIR=		kde

HOMEPAGE=		http://www.kde.org
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src
EXTRACT_SUFX=		.tar.bz2

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

MODULES=	qt2
LIB_DEPENDS= 	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		audiofile::devel/libaudiofile \
		pcreposix,pcre::devel/pcre \
		xml2:libxml->=2.3.13:textproc/libxml \
		bz2::archivers/bzip2

BUILD_DEPENDS=	:zsh-*:shells/zsh/stable ::x11/qt2,-html

# glib2.0 
# qt docs
# CUPS

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/admin

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--enable-mitshm
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
PATCH_LIST=	p-* patch-*
#CONFIGURE_ARGS+=	--enable-debug
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared

#CONFIGURE_ARGS+=	--enable-static --disable-shared

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		QTDOCDIR=${LOCALBASE}/share/doc/qt2/html

# you don't want to know...
CONFIGURE_ENV+=		ac_aux_files=''

MAKE_ENV=		${CONFIGURE_ENV}

pre-build:
	@if pkg dependencies check kdelibs-\*; then \
		if pkg dependencies check ${DISTNAME}; then \
			:; \
		else \
			echo 1>&2 "Error: you must remove your old kdelibs first"; \
			exit 1; \
		fi; \
    	fi

	# Let zsh act as an sh replacement
	ln -sf $(LOCALBASE)/bin/zsh ${WRKBUILD}/sh

# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
MAKE_FLAGS+=LIBTOOL='$(WRKBUILD)/sh $(WRKBUILD)/libtool'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes


.include <bsd.port.mk>
