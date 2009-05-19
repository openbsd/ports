# $OpenBSD: Makefile,v 1.7 2009/05/19 11:03:31 sthen Exp $

COMMENT=	Prelude sensors for Packet Filter

DISTNAME=	prelude-pflogger-0.9.0-rc2
PKGNAME=	prelude-pflogger-0.9.0rc2p3

MODULES=	devel/gettext
WANTLIB=	c gcrypt gnutls gpg-error pcap pthread tasn1 z

LIB_DEPENDS=	prelude.>=8::security/prelude/libprelude

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pflogger/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/pflogger/

.include <bsd.port.mk>
