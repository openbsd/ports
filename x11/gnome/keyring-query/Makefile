# $OpenBSD: Makefile,v 1.2 2008/10/30 12:26:37 jasper Exp $

COMMENT=		provide limited command-line access to the GNOME keyring

GNOME_PROJECT=		gnome-keyring-query
GNOME_VERSION=		0.0.1
PKGNAME=		${DISTNAME}p0
DISTFILES=
CATEGORIES=		sysutils

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

WANTLIB=		c glib-2.0 iconv intl pthread

LIB_DEPENDS=		gnome-keyring::x11/gnome/keyring

CONFIGURE_STYLE=	none

NO_REGRESS=		Yes

do-extract:
	@cp ${FILESDIR}/gnome-keyring-query.c ${WRKDIR}

do-build:
	${CC} ${CFLAGS} -pthread `pkg-config --cflags --libs gnome-keyring-1 glib-2.0` \
		-o ${WRKDIR}/gnome-keyring-query ${WRKDIR}/gnome-keyring-query.c

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/gnome-keyring-query ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-keyring-query
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/gnome-keyring-query

.include <bsd.port.mk>
