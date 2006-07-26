# $OpenBSD: Makefile,v 1.2 2006/07/26 07:07:16 aanriot Exp $

COMMENT=	"Prelude sensors for Packet Filter"

DISTNAME=	prelude-pflogger-0.9.0-rc2
PKGNAME=	prelude-pflogger-0.9.0rc2p0

MODULES=	devel/gettext
WANTLIB=	c gcrypt gnutls gpg-error pcap pthread z

LIB_DEPENDS=	prelude.8::security/prelude/libprelude

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
