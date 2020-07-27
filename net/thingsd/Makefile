# $OpenBSD: Makefile,v 1.4 2020/07/27 20:09:12 tracey Exp $

COMMENT =	things proxy daemon for OpenBSD
CATEGORIES =	net

GH_ACCOUNT =	basepr1me
GH_PROJECT =	thingsd
GH_TAGNAME =	3.0.1

MAINTAINER =	Tracey Emery <tracey@traceyemery.net>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
# uses unveil()
WANTLIB += c crypto event pthread ssl tls util

MAKE_FLAGS =	CC="${CC}"

NO_TEST =	Yes

do-configure:
	sed -i 's,/etc/thingsd.conf,${SYSCONFDIR}/thingsd.conf,' \
		${WRKSRC}/thingsd/thingsd.{h,8,conf.5}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/thingsd
	${INSTALL_DATA} ${WRKSRC}/thingsd/examples/etc/thingsd.conf \
		${PREFIX}/share/examples/thingsd

.include <bsd.port.mk>
