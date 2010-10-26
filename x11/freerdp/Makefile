# $OpenBSD: Makefile,v 1.1.1.1 2010/10/26 12:56:57 giovanni Exp $

COMMENT =		open source client for Windows Terminal Server
DISTNAME =		freerdp-0.8.1
CATEGORIES =		x11 net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freerdp/}

SHARED_LIBS +=		freerdp			0.0 # 0.0
SHARED_LIBS +=		freerdpchanman		0.0 # 0.0
SHARED_LIBS +=		freerdpkbd		0.0 # 0.0
SHARED_LIBS +=		freerdpgdi		0.0 # 0.0

HOMEPAGE =		http://freerdp.sourceforge.net/

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		converters/libiconv

LIB_DEPENDS =		cups::print/cups
WANTLIB +=		X11 Xau Xcursor Xdmcp Xfixes Xrender asn1 c crypto
WANTLIB +=		gssapi krb5 m pthread pthread-stubs ssl xcb z

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L/usr/lib -L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--with-x=${X11BASE} \
			--with-sound=no

USE_LIBTOOL =		Yes

.include <bsd.port.mk>
