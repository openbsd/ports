# $OpenBSD: Makefile,v 1.3 2000/03/24 22:11:53 espie Exp $

DISTNAME=	proxy-suite-1.7
CATEGORIES=    	net security
NEED_VERSION=	1.218
MAINTAINER=	cd@sentia.nl
HOMEPAGE=	http://proxy-suite.suse.de

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES= \
	ftp://ftp.suse.com/pub/projects/proxy-suite/ \
	ftp://ftp.crc.ca/pub/systems/linux/suse/projects/proxy-suite/ \
	ftp://ftp.gwdg.de/pub/linux/suse/ftp.suse.com/projects/proxy-suite/ \
	ftp://ftp.funet.fi/pub/mirrors/ftp.suse.com/pub/projects/proxy-suite/


USE_GMAKE=	Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' \
		--sysconfdir='$${DESTDIR}/etc' \
		--with-libwrap=/usr/lib/

# Take care with sysconfdir:
# - the port will install configuration in fake/etc/ (will be discarded)
# - post-install copies it from WRKSRC to PREFIX/share/proxy-suite/
# - pkg/INSTALL installs them in /etc/proxy-suite/
#   (which is where ftp-proxy defaults to, this discrepance has been
#    mailed to the authors)

FAKE=	Yes

pre-install:
	@strip ${WRKSRC}/ftp-proxy/ftp-proxy

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/proxy-suite
	${INSTALL_DATA} ${WRKSRC}/ftp-proxy/ftp-proxy.conf.sample \
		${PREFIX}/share/proxy-suite

.include <bsd.port.mk>
