# $OpenBSD: Makefile,v 1.30 2005/02/26 12:34:22 alek Exp $

COMMENT=	"network time protocol implementation"
COMMENT-doc=	"network time protocol documentation"

NTP_VERSION=	4.2.0a
DISTNAME=	ntp-stable-${NTP_VERSION}-20040525
PKGNAME=	ntp-${NTP_VERSION}
PKGNAME-doc=	ntp-doc-${NTP_VERSION}
CATEGORIES=	net
MASTER_SITES=	http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ \
		ftp://ftp.udel.edu/pub/ntp/ntp4/ \
		ftp://ftp.cs.umn.edu/ftp00/ftp.udel.edu/pub/ntp/ntp4/

HOMEPAGE=	http://www.ntp.org/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# modified ISC license.  However, some files include different
# copyrights.
#
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-doc
SUBPACKAGE?=

.if defined(PACKAGING) && ${SUBPACKAGE} == "-doc"
PKG_ARCH=	*
.else
WANTLIB=		c crypto curses kvm m readline 
.endif

SEPARATE_BUILD=	concurrent
AUTOCONF_VERSION= 2.58
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -DHAVE_IPV6"
CONFIGURE_ARGS+= --bindir='${PREFIX}/sbin' \
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
	@sed -e s#!!PREFIX!!#${TRUEPREFIX}#g \
	    -e s#!!SYSCONFDIR!!#${SYSCONFDIR}#g \
	    ${FILESDIR}/README.OpenBSD > ${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
	    ${PREFIX}/share/examples/ntp/

.include <bsd.port.mk>
