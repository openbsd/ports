# $OpenBSD: Makefile,v 1.4 2006/10/06 07:59:55 aanriot Exp $

COMMENT=	"Prelude sensors for Packet Filter"

DISTNAME=	prelude-pflogger-0.9.0-rc2
PKGNAME=	prelude-pflogger-0.9.0rc2p1

MODULES=	devel/gettext
WANTLIB=	c gcrypt gnutls gpg-error pcap pthread z

LIB_DEPENDS=	prelude.>=8::security/prelude/libprelude

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pflogger/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/pflogger/

.include <bsd.port.mk>
