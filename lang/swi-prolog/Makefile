# $OpenBSD: Makefile,v 1.39 2012/01/13 00:55:14 naddy Exp $

COMMENT =		Prolog for the real world

V =			5.10.5
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
AUTOCONF_VERSION =	2.67
AUTOCONF_DIR =		${WRKSRC}/src ${WRKSRC}/packages/semweb
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/src \
				${WRKSRC}/packages/jpl \
				${WRKSRC}/packages/xpce/src

CONFIGURE_ENV +=	LDFLAGS=-L${LOCALBASE}/lib \
			CPPFLAGS=-I${LOCALBASE}/include
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
LIB_DEPENDS =		devel/gmp \
			devel/libexecinfo

WANTLIB +=	ICE SM X11 Xext Xft Xinerama Xpm Xt c crypto execinfo gmp 
WANTLIB +=	jpeg m ncursesw pthread readline ssl z

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS =		V XV FULLARCH BOOT

# warning: #warning "<malloc.h> is obsolete, use <stdlib.h>"
pre-patch:
	find ${WRKSRC}/packages/{clib,sgml,xpce} -name '*.[ch]' | \
	  xargs fgrep -l malloc.h | \
	while read i; do \
		sed -e 's/malloc.h/stdlib.h/' $$i >$$i.bak && mv $$i.bak $$i; \
	done

post-install:
	cd ${PREFIX}/lib && \
		ln -s swipl-$V/lib/${FULLARCH}/libpl.so.${LIBpl_VERSION}
	mv ${PREFIX}/lib/swipl-${V}/xpce-${XV}/man/xpce-client.1 \
		${PREFIX}/man/man1/

# XXX figure out why these tests fail
######pre-regress:
######	rm ${WRKBUILD}/src/Tests/thread/agc.pl
######	rm ${WRKBUILD}/src/Tests/thread/agc2.pl


.include <bsd.port.mk>

.for _m in ${MACHINE_ARCH}
.  if !empty(LP64_ARCHS:M${_m})
BOOT =	boot64
.  endif
.endfor
BOOT ?=	boot32
