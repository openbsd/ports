# $OpenBSD: Makefile,v 1.4 2007/01/27 17:35:46 espie Exp $

CATEGORIES=		lang
V=			5.6.27
XV=			6.6.27
FULLARCH=		${MACHINE_ARCH}-openbsd${OSREV}
SUBST_VARS=		V XV FULLARCH
DISTNAME=		pl-$V
PKGNAME=		swi-prolog-$V
MASTER_SITES=		http://gollem.science.uva.nl/cgi-bin/nph-download/SWI-Prolog/
COMMENT=		'prolog for the real world'
HOMEPAGE=		http://www.swi-prolog.org/

SHARED_LIBS=		pl	0.0

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
AUTOCONF_DIR=		${WRKDIST}/src
CONFIGURE_ARGS=		--enable-mt \
			--disable-custom-flags \
			--with-world \
			--disable-gmp \
			--with-jpeg=${LOCALBASE} \
			--without-sgml \
			${CONFIGURE_SHARED}

USE_X11=		Yes
USE_GMAKE=		Yes

MAKE_FLAGS=		SONAMEOPT= \
			SHAREDV=libpl.so.${LIBpl_VERSION}
FAKE_FLAGS=		${MAKE_FLAGS} \
			DESTDIR=${WRKINST}

WANTLIB=		ICE Xrender readline SM freetype Xt pthread \
			c Xinerama Xft Xpm m fontconfig X11 ncurses z

LIB_DEPENDS=		jpeg::graphics/jpeg
SUBST_VARS+=		BOOT

.include <bsd.port.mk>

.for _m in ${MACHINE_ARCH}
.  if !empty(LP64_ARCHS:M${_m})
BOOT=boot64
.  endif
.endfor
BOOT?=boot32
