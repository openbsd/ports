COMMENT =	X11 player for the old ANIM format

DISTNAME =	xanim-2.80.1
REVISION =	9
WRKDIST =	${WRKDIR}/xanim2801
CATEGORIES =	graphics x11

MAINTAINER =	Marc Espie <espie@openbsd.org>

DIST_SUBDIR =	xanim
SITES =		${SITES_OPENBSD}

# License: NOFEE
PERMIT_PACKAGE =Yes

WANTLIB =	ICE SM X11 Xau Xdmcp Xext Xt c m sndio z

BASEDISTFILES =	xanim2801.tar.gz
DISTFILES =	${BASEDISTFILES}
EXTRACT_ONLY =	${BASEDISTFILES}
PATCH_LIST =	patch-*

SUPDISTFILES = 	xa1.0_cyuv_linuxELF.o.Z \
	    	xa2.0_cvid_linuxELF.o.Z \
		xa2.0_iv32_linuxELF.o.Z

# some architectures support more codecs
.if (${MACHINE_ARCH} == i386)
DISTFILES +=	${SUPDISTFILES}
PATCH_LIST +=	i386-patch
LOCAL_LDFLAGS =	-Wl,-znotext
post-extract:
	@${ECHO_MSG} "===>  Adding ${MACHINE_ARCH} specific object files"
	@for i in ${SUPDISTFILES}; do \
		j=`basename $$i`; \
		cp ${FULLDISTDIR}/$$i ${WRKSRC} && uncompress ${WRKSRC}/$$j; \
	done
.endif

CONFIGURE_STYLE =	imake
DOCDIR =	${PREFIX}/share/doc/xanim
MAKE_FLAGS =	LOCAL_LDFLAGS="${LOCAL_LDFLAGS}"

NO_TEST =	Yes

post-configure:
	ln ${WRKSRC}/docs/xanim.man ${WRKSRC}


post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	for file in ${WRKSRC}/docs/*; \
	do \
		[ $$file == ${WRKSRC}/docs/xanim.man ] || ${INSTALL_DATA} $$file ${DOCDIR}; \
	done


.include <bsd.port.mk>
