# OpenBSD makefile for:	gtk+
# Version required:	1.0.3
# Date created:		1998-June-02
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/06/02 20:44:37 marc Exp $
#

# What port/package will be created
#
DISTNAME=		gtk+-1.0.3
CATEGORIES=     	x11

# where to send bitches about this port
#
MAINTAINER=		marc@openbsd.org

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ftp.gimp.org/pub/gtk/v1.0/ \
		ftp://ftp.ameth.org:/pub/mirrors/ftp.gimp.org/pub/gtk/v1.0/

# build/configuration variables
#
USE_X11=		yes

GNU_CONFIGURE=		yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=	--enable-shared
.endif
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		${SETENV} INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
			INSTALL_DATA="${INSTALL_DATA}"

# Update info directory and shared lib configuration
#
post-install:
	test -f ${PREFIX}/info/dir || \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir
	install-info ${PREFIX}/info/gtk.info ${PREFIX}/info/dir
	install-info ${PREFIX}/info/gdk.info ${PREFIX}/info/dir
	install-info ${PREFIX}/info/glib.info ${PREFIX}/info/dir
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
