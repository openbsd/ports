# $OpenBSD: Makefile,v 1.11 2010/10/23 14:20:13 naddy Exp $

SHARED_ONLY=		Yes

COMMENT=		console jabber client
DISTNAME=		mcabber-0.10.0
CATEGORIES=		net

HOMEPAGE=		http://www.lilotux.net/~mikael/mcabber/

MAINTAINER=		Markus Hennecke <markus-hennecke@markus-hennecke.de>

# GPLv2+ with SSL exemption
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

WANTLIB=		c crypto gcrypt gpg-error ncurses panel pcre pthread ssl

LIB_DEPENDS=		glib-2.0,gmodule-2.0::devel/glib2 \
			gpgme::security/gpgme \
			loudmouth-1.>=3::net/loudmouth \
			idn::devel/libidn \
			otr::security/libotr
RUN_DEPENDS=		::devel/desktop-file-utils

USE_LIBTOOL=		Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu
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
