# $OpenBSD: Makefile,v 1.74 2020/07/11 22:54:35 sthen Exp $

COMMENT=	manage remote serial consoles via TCP/IP

V=		8.2.5
DISTNAME=	conserver-$V
CATEGORIES=	comms
REVISION=	0

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	https://www.conserver.com/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c util

FLAVORS=	ipmi net
FLAVOR?=

MASTER_SITES=	https://github.com/bstansell/conserver/releases/download/v$V/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-master=localhost \
		--with-pidfile=${LOCALSTATEDIR}/run/conserver/conserver.pid
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:Mnet}
# not yet using experimental IPv6 support added in 8.2.0; investigate
# implications of ifdef'ing out ProbeInterfaces in cutil.c before enabling
WANTLIB+= crypto ssl
CONFIGURE_ARGS+= --with-openssl \
		--with-port=3109
.else
CONFIGURE_ARGS+= --with-uds=${LOCALSTATEDIR}/run/conserver \
		--with-trust-uds-cred
.endif

.if ${FLAVOR:Mipmi}
CONFIGURE_ARGS+= --with-freeipmi=yes
LIB_DEPENDS+=	sysutils/freeipmi
WANTLIB+=	ipmiconsole
.endif

post-install:
	${INSTALL_DATA} ${WRKSRC}/conserver.cf/samples/* \
	    ${FILESDIR}/console.cf ${PREFIX}/share/examples/conserver/

TEST_TARGET=	test

.include <bsd.port.mk>
