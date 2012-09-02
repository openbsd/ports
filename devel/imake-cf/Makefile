# $OpenBSD: Makefile,v 1.1.1.1 2012/09/02 14:13:09 espie Exp $

PKG_ARCH = 	*
COMMENT =  	config files for imake
CATEGORIES =	devel x11
DISTNAME = 	xorg-cf-files-1.0.4
PKGNAME = 	imake-cf-1.0.4
MASTER_SITES = 	http://cgit.freedesktop.org/xorg/util/cf/snapshot/

PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_DISTFILES_FTP = 		Yes
PERMIT_PACKAGE_CDROM = 		Yes
PERMIT_PACKAGE_FTP = 		Yes

SUBST += 	-e 's|@prefix@|${X11BASE}|'
SUBST += 	-e 's|@FONTROOTDIR@|${X11BASE}/lib/X11/fonts|'
SUBST += 	-e 's|@ENCODINGSDIR|$${FONTROOTDIR}/encodings|'

do-build:
	sed ${SUBST} <${WRKSRC}/site.def.in >${WRKSRC}/site.def

XCONFDIR =	${PREFIX}/lib/X11/config

do-install:
	${INSTALL_DATA_DIR} ${XCONFDIR}
	for f in ${WRKSRC}/*.{def,rules,tmpl}; do \
		${INSTALL_DATA} $$f ${XCONFDIR}; \
	done

.include <bsd.port.mk>
