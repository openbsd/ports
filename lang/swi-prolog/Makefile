# $OpenBSD: Makefile,v 1.33 2011/04/28 18:59:18 jasper Exp $

COMMENT =		Prolog for the real world

V =			5.10.4
XV =			6.6.66
DISTNAME =		pl-$V
PKGNAME =		swi-prolog-$V
REVISION =		1
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
AUTOCONF_VERSION =	2.67
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

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		graphics/jpeg
WANTLIB +=  c m ncursesw pthread pthread-stubs readline z

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS =		V XV FULLARCH BOOT

post-install:
	cd ${PREFIX}/lib && ln -s swipl-$V/lib/${FULLARCH}/libpl.so.${LIBpl_VERSION}

.include <bsd.port.mk>

.for _m in ${MACHINE_ARCH}
.  if !empty(LP64_ARCHS:M${_m})
BOOT =	boot64
.  endif
.endfor
BOOT ?=	boot32
