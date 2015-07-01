# $OpenBSD: Makefile,v 1.65 2015/07/01 11:59:24 sthen Exp $

COMMENT=	Network Time Protocol reference implementation

# NTP sometimes has a 'pN' in its version number, which we don't want
# to confuse with the ports system's 'pN' convention, so convert it to
# 'pl' for local use.

VERSION=	4.2.8p3
DISTNAME=	ntp-${VERSION}
PKGNAME=	ntp-${VERSION:S/p/pl/}
CATEGORIES=	net

HOMEPAGE=	http://www.ntp.org/

MASTER_SITES=	http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ \
		http://archive.ntp.org/ntp4/ntp-4.2/

# modified ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto edit event_core event_pthreads
WANTLIB += m pthread ssl termcap

# enabling SEPARATE_BUILD causes the parser to be rebuilt .y -> .c,
# which requires bison

CONFIGURE_STYLE=  gnu

CONFIGURE_ARGS=	--docdir=${TRUEPREFIX}/share/doc/ntp \
		--enable-parse-clocks \
		--with-binsubdir=sbin \
		--without-ntpsnmpd
CONFIGURE_ENV=	CPPFLAGS='-DCONFIG_FILE="\"${SYSCONFDIR}/ntp.conf\"" \
			  -DKEYFILE="\"${SYSCONFDIR}/ntp.keys\""' \
		ac_cv_header_sys_audioio_h=no

LIB_DEPENDS=	devel/libevent2

post-patch:
	cp ${WRKSRC}/sntp/loc/freebsd ${WRKSRC}/sntp/loc/openbsd

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntp
	@cd ${WRKSRC}/conf && pax -rw * ${PREFIX}/share/examples/ntp

.include <bsd.port.mk>
