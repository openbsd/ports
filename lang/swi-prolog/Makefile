# $OpenBSD: Makefile,v 1.29 2011/01/15 01:09:43 naddy Exp $

COMMENT =		Prolog for the real world

V =			5.10.2
XV =			6.6.66
DISTNAME =		pl-$V
PKGNAME =		swi-prolog-$V
REVISION =		0
CATEGORIES =		lang

SHARED_LIBS =		pl	3.0

HOMEPAGE =		http://www.swi-prolog.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes 
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/download/stable/src/ \
			http://distfiles.nl/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61 # 2.64
AUTOCONF_DIR =		${WRKSRC}/src ${WRKSRC}/packages/semweb
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/src \
				${WRKSRC}/packages/jpl \
				${WRKSRC}/packages/xpce/src
CONFIGURE_ARGS =	--enable-mt \
			--disable-custom-flags \
			--with-world \
			--with-jpeg=${LOCALBASE} \
			${CONFIGURE_SHARED}

USE_GMAKE =		Yes
USE_GROFF =		Yes

MAKE_FLAGS =		SONAMEOPT= \
			SHAREDV=libpl.so.${LIBpl_VERSION}

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xinerama Xpm Xrender
WANTLIB += Xt c expat fontconfig freetype m ncursesw pthread pthread-stubs
WANTLIB += readline xcb z jpeg

LIB_DEPENDS =		graphics/jpeg

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS =		V XV FULLARCH BOOT

post-extract:
	@rm -fr ${WRKSRC}/packages/{sgml,RDF}

# Don't build sgml (and dependant RDF), as it requires having swprintf()
# and the like.
post-install:
	cd ${PREFIX}/lib && ln -s swipl-$V/lib/${FULLARCH}/libpl.so.${LIBpl_VERSION}

.include <bsd.port.mk>

.for _m in ${MACHINE_ARCH}
.  if !empty(LP64_ARCHS:M${_m})
BOOT =	boot64
.  endif
.endfor
BOOT ?=	boot32
