# $OpenBSD: Makefile,v 1.37 2009/01/26 23:26:02 naddy Exp $

COMMENT-main=	network time protocol implementation
COMMENT-doc=	network time protocol documentation

# ISC's NTP has a 'pN' in its version number, which we don't want
# to confuse with the ports system's 'pN' convention, so we
# convert it to 'pl' for local use.

NTP_VERSION=	4.2.4p5
NTP_PKG_VERSION=${NTP_VERSION:S/p/pl/}
DISTNAME=	ntp-${NTP_VERSION}
PKGNAME-main=	ntp-${NTP_PKG_VERSION}
PKGNAME-doc=	ntp-doc-${NTP_PKG_VERSION}
CATEGORIES=	net
MASTER_SITES=   ftp://ftp.udel.edu/pub/ntp/ntp4/ntp-4.2/ \
		http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ \
		ftp://archive.ntp.org/ntp4/ntp-4.2/ \
		http://archive.ntp.org/ntp4/ntp-4.2/

HOMEPAGE=	http://www.ntp.org/

# modified ISC license.  However, some files include different
# copyrights.
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -doc

PKG_ARCH-doc=	*
WANTLIB-main=	c crypto curses kvm m readline 

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
AUTOCONF_VERSION= 2.59
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --bindir='${PREFIX}/sbin' \
		--with-binsubdir=sbin \
	 	--enable-accurate-adjtime --disable-IRIG \
		--enable-parse-clocks \
		--with-openssl-libdir=/usr/lib \
		--with-openssl-incdir=/usr/include \
		--with-crypto=openssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntp
	@cd ${WRKSRC}/html && pax -rw * ${PREFIX}/share/doc/ntp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntp
	@cd ${WRKSRC}/conf && pax -rw * ${PREFIX}/share/examples/ntp
	@${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD ${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
	    ${PREFIX}/share/examples/ntp/

.include <bsd.port.mk>
