COMMENT =	feature-rich command line DNS client

MODGO_MODNAME =	github.com/natesales/q
MODGO_VERSION =	v0.19.2

DISTNAME =	dnsq-${MODGO_VERSION}
PKGNAME =	dnsq-0.19.2

HOMEPAGE =	https://github.com/natesales/q
MAINTAINER =	Renaud Allard <renaud@allard.it>

CATEGORIES =	net

# GPL-3.0
PERMIT_PACKAGE =	yes

MODULES =	lang/go
WANTLIB +=	c pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dnsq
	${INSTALL_DATA} ${WRKSRC}/*.md ${PREFIX}/share/doc/dnsq
	# Create symlink from q to dnsq to cope with package name
	cd ${PREFIX}/bin && ln -s q dnsq

.include "modules.inc"
.include <bsd.port.mk>
