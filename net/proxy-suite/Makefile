# $OpenBSD: Makefile,v 1.6 2000/10/22 15:43:07 espie Exp $

DISTNAME=	proxy-suite-1.7
HOMEPAGE=	http://proxy-suite.suse.de
CATEGORIES=    	net security
NEED_VERSION=	1.305
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>

MASTER_SITES= \
	ftp://ftp.suse.com/pub/projects/proxy-suite/ \
	ftp://ftp.crc.ca/pub/systems/linux/suse/projects/proxy-suite/ \
	ftp://ftp.gwdg.de/pub/linux/suse/ftp.suse.com/projects/proxy-suite/ \
	ftp://ftp.funet.fi/pub/mirrors/ftp.suse.com/pub/projects/proxy-suite/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	--with-libwrap=/usr/lib/

# Take care with sysconfdir:
# - the port will install configuration in fake/etc/ (will be discarded)
# - post-install copies it from WRKSRC to PREFIX/share/proxy-suite/
# - pkg/INSTALL installs them in /etc/proxy-suite/
#   (which is where ftp-proxy defaults to, this discrepance has been
#    mailed to the authors)

pre-install:
	@strip ${WRKSRC}/ftp-proxy/ftp-proxy

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/proxy-suite
	${INSTALL_DATA} ${WRKSRC}/ftp-proxy/ftp-proxy.conf.sample \
		${PREFIX}/share/proxy-suite

.include <bsd.port.mk>
