# $OpenBSD: Makefile,v 1.3 2006/08/03 23:28:12 espie Exp $

COMMENT=	"Prelude sensors for Packet Filter"

DISTNAME=	prelude-pflogger-0.9.0-rc2
PKGNAME=	prelude-pflogger-0.9.0rc2p0

MODULES=	devel/gettext
WANTLIB=	c gcrypt gnutls gpg-error pcap pthread z

LIB_DEPENDS=	prelude.>=8::security/prelude/libprelude

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
