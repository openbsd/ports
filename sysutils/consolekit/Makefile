# $OpenBSD: Makefile,v 1.1.1.1 2009/06/07 02:55:19 robert Exp $

COMMENT=	Framework for defining and tracking users

DISTNAME=	ConsoleKit-0.3.0
PKGNAME=	${DISTNAME:L}
CATEGORIES=	sysutils	
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS+=	ck-connector	0.0

HOMEPAGE=	http://cgit.freedesktop.org/ConsoleKit/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	http://people.freedesktop.org/~mccann/dist/

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-authfw=bsdauth \
			--with-os-type=openbsd
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

FAKE_FLAGS=		DBUS_SYS_DIR=${TRUEPREFIX}/share/examples/consolekit/dbus-1 \
			sysconfdir=${TRUEPREFIX}/share/examples/consolekit

pre-patch:
	@cd ${WRKSRC}/tools && \
                cp -R freebsd openbsd && \
                perl -pi -e "s,freebsd,openbsd,g" openbsd/Makefile.in

.include <bsd.port.mk>
