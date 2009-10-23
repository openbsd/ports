# $OpenBSD: Makefile,v 1.6 2009/10/23 09:07:09 jasper Exp $

COMMENT=		console jabber client
DISTNAME=		mcabber-0.9.10
CATEGORIES=		net

HOMEPAGE=		http://www.lilotux.net/~mikael/mcabber/

MAINTAINER=		Markus Hennecke <markus-hennecke@markus-hennecke.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

WANTLIB=		c crypto gpg-error ncurses panel ssl

LIB_DEPENDS=		glib-2.0::devel/glib2 \
			gpgme::security/gpgme \
			otr::security/libotr
RUN_DEPENDS=		::devel/desktop-file-utils

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--enable-gpgme \
			--with-ssl \
			--disable-aspell \
			--disable-enchant \
			--enable-otr \
			--enable-sigwinch \
			--with-libotr-prefix=${LOCALBASE}/lib \
			--with-libotr-inc-prefix=${LOCALBASE}/include

pre-install:
	cd ${WRKSRC}/doc \
		&& /usr/bin/tbl mcabber.1 > mcabber.1.new \
		&& /bin/mv mcabber.1.new mcabber.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/mcabber.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mcabber
	${INSTALL_DATA} ${WRKSRC}/mcabberrc.example \
		${PREFIX}/share/examples/mcabber

.include <bsd.port.mk>
