# $OpenBSD: Makefile,v 1.10 2010/09/01 06:50:56 ajacoutot Exp $

COMMENT=	Prelude sensors for Packet Filter

DISTNAME=	prelude-pflogger-0.9.0-rc2
PKGNAME=	prelude-pflogger-0.9.0rc2

REVISION=	6

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-pflogger/

MODULES=	devel/gettext
WANTLIB=	c gcrypt gnutls gpg-error pcap pthread tasn1 z prelude

LIB_DEPENDS=	::security/prelude/libprelude

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pflogger/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/pflogger/

.include <bsd.port.mk>
