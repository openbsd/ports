# $OpenBSD: Makefile,v 1.10 1999/03/14 23:44:01 brad Exp $

DISTNAME=		gtk+-1.2.0
CATEGORIES=     	x11

NEED_VERSION=		1.73

MAINTAINER=		marc@openbsd.org

MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
		http://www.ameth.org/gimp/gtk/v1.2/

BUILD_DEPENDS=	gettext:${PORTSDIR}/devel/gettext
RUN_DEPENDS=	gettext:${PORTSDIR}/devel/gettext
LIB_DEPENDS=    glib:${PORTSDIR}/devel/glib

USE_X11=		yes
USE_PERL5=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LIBS="-L${LOCALBASE}/lib"

MAN1=	gtk-config.1

post-extract:
	@${RM} ${WRKSRC}/docs/*.info

post-install:
	@${MKDIR} ${LOCALBASE}/share/aclocal
	@${INSTALL_DATA} ${WRKSRC}/gtk.m4 ${LOCALBASE}/share/aclocal/
	test -f ${PREFIX}/info/dir || \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir
	install-info ${PREFIX}/info/gtk.info ${PREFIX}/info/dir
	install-info ${PREFIX}/info/gdk.info ${PREFIX}/info/dir
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
