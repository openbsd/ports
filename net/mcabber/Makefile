# $OpenBSD: Makefile,v 1.38 2019/07/12 20:48:32 sthen Exp $

COMMENT=		console jabber client
DISTNAME=		mcabber-1.1.0
CATEGORIES=		net
REVISION=		4

HOMEPAGE=		https://mcabber.com/

MAINTAINER=		Markus Hennecke <markus-hennecke@markus-hennecke.de>

# GPLv2+ with SSL exemption
PERMIT_PACKAGE=	Yes

WANTLIB += assuan c crypto curses gcrypt glib-2.0 gpg-error gpgme iconv
WANTLIB += idn intl loudmouth-1>=3 otr panelw pcre pthread ssl

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

# uses pledge()

LIB_DEPENDS=		devel/glib2 \
			security/gpgme \
			net/loudmouth \
			devel/libidn \
			security/libotr \
			devel/gettext,-runtime

RUN_DEPENDS=		devel/desktop-file-utils

USE_GMAKE =		Yes
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--enable-gpgme \
			--disable-aspell \
			--disable-enchant \
			--disable-modules \
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
