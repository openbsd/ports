COMMENT=		network statistics gatherer with graphs

GH_ACCOUNT=		emikulic
GH_PROJECT=		darkstat
GH_TAGNAME=		3.0.721

CATEGORIES=		net www

HOMEPAGE=		https://unix4lyfe.org/darkstat/

# GPLv2 and BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c pcap z

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--with-privdrop-user=_darkstat

NO_TEST=		Yes

.include <bsd.port.mk>
