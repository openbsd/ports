# $OpenBSD: Makefile,v 1.21 2013/08/15 16:34:49 stsp Exp $

SHARED_ONLY=		Yes

COMMENT=		console jabber client
DISTNAME=		mcabber-0.10.2
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://www.lilotux.net/~mikael/mcabber/

MAINTAINER=		Markus Hennecke <markus-hennecke@markus-hennecke.de>

# GPLv2+ with SSL exemption
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

WANTLIB=		c crypto gcrypt gpg-error ncursesw panelw pcre pthread \
			ssl glib-2.0 gmodule-2.0 gpgme loudmouth-1>=3 \
			idn otr assuan

LIB_DEPENDS=		devel/glib2 \
			security/gpgme \
			net/loudmouth \
			devel/libidn \
			security/libotr
RUN_DEPENDS=		devel/desktop-file-utils

USE_GROFF =		Yes
LIBTOOL_FLAGS=		--tag=disable-static

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS= 	--enable-gpgme \
			--disable-aspell \
			--disable-enchant \
			--enable-otr \
			--enable-sigwinch \
			--with-libotr-prefix=${LOCALBASE}/lib \
			--with-libotr-inc-prefix=${LOCALBASE}/include

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/mcabber.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mcabber
	${INSTALL_DATA} ${WRKSRC}/mcabberrc.example \
		${PREFIX}/share/examples/mcabber

.include <bsd.port.mk>
