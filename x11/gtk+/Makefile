# $OpenBSD: Makefile,v 1.9 1999/03/02 04:41:09 marc Exp $
#

DISTNAME=		gtk+-1.0.6
CATEGORIES=     	x11

NEED_VERSION=		1.73

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		ftp://ftp.gimp.org/pub/gtk/v1.0/ \
		ftp://ftp.ameth.org/pub/mirrors/ftp.gimp.org/pub/gtk/v1.0/

USE_X11=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		${SETENV} INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
			INSTALL_DATA="${INSTALL_DATA}"

# The tarball contains empty info files -- remove them so the proper
# info files get created and installed
#
post-extract:
	@${RM} ${WRKSRC}/docs/*.info

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
