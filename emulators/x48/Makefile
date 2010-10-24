# $OpenBSD: Makefile,v 1.21 2010/10/24 21:17:49 ajacoutot Exp $
#

COMMENT=		HP48sx emulator

DISTNAME=		x48-0.4.0
REVISION=		1
CATEGORIES=		emulators

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext c pthread-stubs xcb

MASTER_SITES=		${MASTER_SITE_SUNSITE:=system/emulators/}

CONFIGURE_STYLE=	imake noman

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/x48
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/x48/README-x48
	${INSTALL_DATA} ${WRKSRC}/doc/CARDS.doc ${WRKSRC}/doc/ROMDump.doc \
			${PREFIX}/share/x48

.include <bsd.port.mk>
