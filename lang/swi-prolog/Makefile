# $OpenBSD: Makefile,v 1.19 2009/08/10 17:31:07 kili Exp $

CATEGORIES =		lang
V =			5.6.59
XV =			6.6.58
FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS =		V XV FULLARCH
DISTNAME =		pl-$V
PKGNAME =		swi-prolog-$Vp3
MASTER_SITES =		http://gollem.science.uva.nl/cgi-bin/nph-download/SWI-Prolog/
COMMENT =		Prolog for the real world
HOMEPAGE =		http://www.swi-prolog.org/

SHARED_LIBS =		pl	2.0

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes 
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.60
AUTOCONF_DIR =		${WRKSRC}/src ${WRKSRC}/packages/semweb
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/src \
				${WRKSRC}/packages/jpl \
				${WRKSRC}/packages/xpce/src
CONFIGURE_ARGS =	--enable-mt \
			--disable-custom-flags \
			--with-world \
			--disable-gmp \
			--with-jpeg=${LOCALBASE} \
			--without-sgml \
			${CONFIGURE_SHARED}

USE_X11 =		Yes
USE_GMAKE =		Yes

MAKE_FLAGS =		SONAMEOPT= \
			SHAREDV=libpl.so.${LIBpl_VERSION}

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xinerama Xpm Xrender
WANTLIB += Xt c expat fontconfig freetype m ncurses pthread pthread-stubs
WANTLIB += readline xcb z

LIB_DEPENDS =		jpeg::graphics/jpeg
SUBST_VARS +=		BOOT

post-install:
	cd ${PREFIX}/lib && ln -s swipl-$V/lib/${FULLARCH}/libpl.so.${LIBpl_VERSION}

.include <bsd.port.mk>

.for _m in ${MACHINE_ARCH}
.  if !empty(LP64_ARCHS:M${_m})
BOOT =	boot64
.  endif
.endfor
BOOT ?=	boot32
