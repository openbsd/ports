# $OpenBSD: Makefile,v 1.1.1.1 2004/07/16 21:01:36 todd Exp $

COMMENT=	"C++ cross-platform GUI toolkit - header files"
PKGNAME=		wxWidgets-headers-${VERSION}

NO_REGRESS=    Yes

# Configuring for X11 seems to be the most common subset
CONFIGURE_ARGS+=	--with-x11
NO_BUILD=		Yes
INSTALL_TARGET=		install_common

post-install:
	rm -fr ${PREFIX}/include/wx/x11/
	${INSTALL_SCRIPT} ${FILESDIR}/wx-config ${PREFIX}/bin

.include <bsd.port.mk>
