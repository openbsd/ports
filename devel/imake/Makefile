# $OpenBSD: Makefile,v 1.5 2015/06/17 05:45:50 ajacoutot Exp $

COMMENT =  	makefile generator
CATEGORIES =	devel x11
DISTNAME = 	imake-1.0.7
MASTER_SITES = 	http://ftp.x.org/pub/individual/util/

PERMIT_PACKAGE_CDROM = 		Yes

WANTLIB =	c

do-configure:
	ln -sf ${FILESDIR}/Makefile ${WRKSRC}
	echo "#define HAVE_MKSTEMP" >${WRKSRC}/config.h

MAKE_FLAGS = 	XCONFDIR=${LOCALBASE}/lib/X11/config \
		CPP_PROGRAM=/usr/bin/cpp

FAKE_FLAGS = 	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
		INSTALL_MAN="${INSTALL_MAN}"

RUN_DEPENDS = 	devel/imake-cf

NO_TEST =	Yes

.include <bsd.port.mk>
