# $OpenBSD: Makefile,v 1.8 2009/08/30 20:37:16 rui Exp $

COMMENT=	Prelude sensors for Packet Filter

DISTNAME=	prelude-pflogger-0.9.0-rc2
PKGNAME=	prelude-pflogger-0.9.0rc2p4

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-pflogger/

MODULES=	devel/gettext
WANTLIB=	c gcrypt gnutls gpg-error pcap pthread tasn1 z

LIB_DEPENDS=	prelude.>=8::security/prelude/libprelude

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pflogger/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/pflogger/

.include <bsd.port.mk>
