# $OpenBSD: Makefile,v 1.3 2008/02/06 11:35:17 martynas Exp $

COMMENT=		console jabber client
DISTNAME=		mcabber-0.9.6
PKGNAME=		${DISTNAME}p0
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
			--enable-otr \
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
