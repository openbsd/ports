# OpenBSD makefile for:	gimp
# Version required:	1.0.0
# Date created:		1998-Jun-07
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.4 1998/06/08 17:16:07 marc Exp $
#

# What port/package will be created
#
DISTNAME=		gimp-1.0.0
EXTRANAME=		gimp-data-extras-1.0.0
CATEGORIES=     	graphics x11

# where to send bitches about this port
#
MAINTAINER=		marc@openbsd.org

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ftp.gimp.org/pub/gimp/v1.0/v1.0.0/ \
	ftp://ftp.ameth.org:/pub/mirrors/ftp.gimp.org/pub/gimp/v1.0/v1.0.0/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} ${EXTRANAME}${EXTRACT_SUFX}

# Dependencies
#
LIB_DEPENDS=		gtk\\.1\\.:${PORTSDIR}/x11/gtk+ \
			jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
			mpeg\\.1\\.:${PORTSDIR}/graphics/mpeg-lib \
			png\\.1\\.:${PORTSDIR}/graphics/png \
			tiff34\\.1\\.:${PORTSDIR}/graphics/tiff34
OS_RELEASE!=		uname -r
OS_NO_XPM=		2.2
.if ( ${OS_RELEASE} <= ${OS_NO_XPM} )
LIB_DEPENDS+=		Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

# build/configuration variables
#
USE_X11=		yes
GNU_CONFIGURE=		yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=	--enable-shared
.endif
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		${SETENV} CPPFLAGS=-I/usr/local/include \
			LDFLAGS=-L/usr/local/lib

# Configure the gimp-data-extras, too.
#
post-configure:
	@(cd ${WRKDIR}/${EXTRANAME} && \
	    CC="${CC}" ac_cv_path_CC="${CC}" CFLAGS="${CFLAGS}" \
	    INSTALL="/usr/bin/install -c -o ${BINOWN} -g ${BINGRP}" \
	    INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
	    INSTALL_DATA="${INSTALL_DATA}" \
	    ${CONFIGURE_ENV} ./${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS})

# Update shared lib info just in case the port install procedure didn't
# install the extras.
#
post-install:
	${LDCONFIG} -m ${PREFIX}/lib
	cd ${WRKDIR}/${EXTRANAME} && make install

.include <bsd.port.mk>
