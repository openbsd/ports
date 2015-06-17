# $OpenBSD: Makefile,v 1.8 2015/06/17 05:45:33 ajacoutot Exp $

PKG_ARCH = 	*
COMMENT =  	config files for imake
CATEGORIES =	devel x11
V =		1.0.5
DISTNAME = 	xorg-cf-files-${V}
PKGNAME = 	imake-cf-${V}
MASTER_SITES = 	http://ftp.x.org/pub/individual/util/

PERMIT_PACKAGE_CDROM = 		Yes

SUBST += 	-e 's|@prefix@|${X11BASE}|'
SUBST += 	-e 's|@FONTROOTDIR@|${X11BASE}/lib/X11/fonts|'
SUBST += 	-e 's|@ENCODINGSDIR|$${FONTROOTDIR}/encodings|'

XCONFDIR =	${PREFIX}/lib/X11/config

NO_TEST=	Yes

do-build:
	sed ${SUBST} <${WRKSRC}/site.def.in >${WRKSRC}/site.def

pre-configure:
	${SUBST_CMD} ${WRKSRC}/OpenBSD.cf

do-install:
	${INSTALL_DATA_DIR} ${XCONFDIR}
	for f in ${WRKSRC}/*.{cf,def,rules,tmpl}; do \
		${INSTALL_DATA} $$f ${XCONFDIR}; \
	done
	rm ${XCONFDIR}/Motif.rules
	rm ${XCONFDIR}/Motif.tmpl
	touch ${XCONFDIR}/host.def
	touch ${XCONFDIR}/date.def
	touch ${XCONFDIR}/version.def

.include <bsd.port.mk>
