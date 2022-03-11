COMMENT =	smalltalk system, vm

SRCV =		1
DISTFILES =	Squeak-$V-${SRCV}.src.tar.gz

PKGNAME =	squeak-vm-$V.${SRCV}
REVISION =	11

WRKDIST =	${WRKDIR}/Squeak-$V-${SRCV}
WRKSRC =	${WRKDIST}/platforms/unix/config

WANTLIB += GL ICE SM X11 X11-xcb Xdamage Xext Xfixes Xrender Xt
WANTLIB += Xxf86vm c drm expat glapi m pthread sndio util xcb
WANTLIB += xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-sync xcb-xfixes
WANTLIB += xshmfence z

SEPARATE_BUILD =	Yes

MASTER_SITES =	${SQUEAK_SITE}unix-linux/

RUN_DEPENDS =		squeak-sources-${SOURCEV}:lang/squeak/sources

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTORECONF =		${MAKE} configure

DESTDIRNAME =		ROOT
CONFIGURE_ENV =		LDFLAGS="-lpthread ${LDFLAGS}" RANLIB=ranlib \
			ac_cv_socklen_t=yes
USE_GMAKE =		Yes
USE_LIBTOOL =		No
NO_TEST =		Yes

FULLV =			$V-${SRCV}

# XXX gnu-interp doesn't work with pie.
#.if ${MACHINE_ARCH} != "powerpc"
#MAKE_FLAGS +=		INTERP=gnu-interp
#.endif

MAKE_FLAGS +=		docdir=${PREFIX}/share/doc/squeak \
			CC="${CC}" \
			LD="${CC}"
DESTDIRNAME =		ROOT
SUBST_VARS +=		FULLV
CFLAGS +=		-fgnu89-inline

# not quite the same as FIX_CRLF_FILES
pre-patch:
	@perl -pi -e s,\\r,\\n,g ${WRKDIST}/platforms/unix/src/vm/intplugins/SoundPlugin/*.c

pre-build:
	@perl -pi -e s,dprintf,debugprintf, ${WRKDIST}/platforms/unix/vm/*.c
	@perl -pi -e s,"define dprintf","define debugprintf", ${WRKDIST}/platforms/unix/vm/debug.h

.include <bsd.port.mk>
