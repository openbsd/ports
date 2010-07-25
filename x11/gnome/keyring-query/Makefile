# $OpenBSD: Makefile,v 1.8 2010/07/25 08:15:32 ajacoutot Exp $

COMMENT=		provide limited command-line access to the GNOME keyring

GNOME_PROJECT=		gnome-keyring-query
GNOME_VERSION=		0.0.1
REVISION=		5
DISTFILES=
CATEGORIES=		sysutils

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome \
			devel/gettext

WANTLIB=		c glib-2.0 pthread gnome-keyring

LIB_DEPENDS=		:libgnome-keyring-*:x11/gnome/libgnome-keyring

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
