# $OpenBSD: Makefile,v 1.8 1998/11/08 01:38:42 marc Exp $
#

# What port/package will be created
#
DISTNAME=		gimp-1.0.2
EXTRANAME=		gimp-data-extras-1.0.0
CATEGORIES=     	graphics x11

MAINTAINER=		dugsong@openbsd.org

MASTER_SITES=		ftp://ftp.gimp.org/pub/gimp/v1.0/v1.0.2/ \
	ftp://ftp.ameth.org:/pub/mirrors/ftp.gimp.org/pub/gimp/v1.0/v1.0.2/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} ${EXTRANAME}${EXTRACT_SUFX}

LIB_DEPENDS=		gtk\\.1\\.:${PORTSDIR}/x11/gtk+ \
			jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
			mpeg\\.1\\.:${PORTSDIR}/graphics/mpeg-lib \
			png\\.1\\.:${PORTSDIR}/graphics/png \
			tiff\\.3\\.4:${PORTSDIR}/graphics/tiff34

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
