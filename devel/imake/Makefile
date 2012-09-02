# $OpenBSD: Makefile,v 1.1.1.1 2012/09/02 14:14:02 espie Exp $

COMMENT =  	makefile generator
CATEGORIES =	devel x11
DISTNAME = 	imake-1.0.5
MASTER_SITES = 	http://cgit.freedesktop.org/xorg/util/imake/snapshot/

PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_DISTFILES_FTP = 		Yes
PERMIT_PACKAGE_CDROM = 		Yes
PERMIT_PACKAGE_FTP = 		Yes

do-configure:
	ln -sf ${FILESDIR}/Makefile ${WRKSRC}
	echo "#define HAVE_MKSTEMP" >${WRKSRC}/config.h

MAKE_FLAGS = 	XCONFDIR=${LOCALBASE}/lib/X11/config \
		CPP_PROGRAM=/usr/bin/cpp

FAKE_FLAGS = 	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
		INSTALL_MAN="${INSTALL_MAN}"

RUN_DEPENDS = 	devel/imake-cf

.include <bsd.port.mk>
