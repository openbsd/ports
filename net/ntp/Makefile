# $OpenBSD: Makefile,v 1.59 2014/02/09 21:36:46 sthen Exp $

COMMENT=	Network Time Protocol reference implementation

# NTP has a 'pN' in its version number, which we don't want
# to confuse with the ports system's 'pN' convention, so we
# convert it to 'pl' for local use.

VERSION=	4.2.7p418
DISTNAME=	ntp-dev-${VERSION}
PKGNAME=	ntp-${VERSION:S/p/pl/}
CATEGORIES=	net
MASTER_SITES=	http://archive.ntp.org/ntp4/ntp-dev/

HOMEPAGE=	http://www.ntp.org/

# modified ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto edit event_core event_extra event_pthreads
WANTLIB += m pthread ssl termcap

# enabling SEPARATE_BUILD causes the parser to be rebuilt .y -> .c,
# which requires bison

CONFIGURE_STYLE=  gnu
AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11

CONFIGURE_ARGS=	--docdir=${TRUEPREFIX}/share/doc/ntp \
		--enable-parse-clocks \
		--with-binsubdir=sbin \
		--without-ntpsnmpd
CONFIGURE_ENV=	CPPFLAGS='-DCONFIG_FILE="\"${SYSCONFDIR}/ntp.conf\"" \
			  -DKEYFILE="\"${SYSCONFDIR}/ntp.keys\""'

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool
LIB_DEPENDS=	devel/libevent2

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./bootstrap
	cp ${WRKSRC}/sntp/loc/freebsd ${WRKSRC}/sntp/loc/openbsd

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntp
	@cd ${WRKSRC}/conf && pax -rw * ${PREFIX}/share/examples/ntp

.include <bsd.port.mk>
