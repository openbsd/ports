# $OpenBSD: Makefile,v 1.56 2013/03/11 11:35:50 espie Exp $

COMMENT=	Network Time Protocol reference implementation

# NTP has a 'pN' in its version number, which we don't want
# to confuse with the ports system's 'pN' convention, so we
# convert it to 'pl' for local use.

VERSION=	4.2.6p5
DISTNAME=	ntp-${VERSION}
PKGNAME=	ntp-${VERSION:S/p/pl/}
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	http://archive.ntp.org/ntp4/ntp-4.2/

HOMEPAGE=	http://www.ntp.org/

# modified ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto edit kvm m termcap

# enabling SEPARATE_BUILD causes the parser to be rebuilt .y -> .c,
# which requires bison

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-parse-clocks \
		--with-binsubdir=sbin
CONFIGURE_ENV=	CPPFLAGS='-DCONFIG_FILE="\"${SYSCONFDIR}/ntp.conf\"" \
			  -DKEYFILE="\"${SYSCONFDIR}/ntp.keys\""'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntp
	@cd ${WRKSRC}/html && pax -rw * ${PREFIX}/share/doc/ntp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntp
	@cd ${WRKSRC}/conf && pax -rw * ${PREFIX}/share/examples/ntp

.include <bsd.port.mk>
