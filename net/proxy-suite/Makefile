# $OpenBSD: Makefile,v 1.20 2019/05/05 22:34:40 danj Exp $

COMMENT=	set of programs to enhance firewall security

DISTNAME=	proxy-suite-1.9
REVISION=	1
HOMEPAGE=	http://www.suse.com/en/whitepapers/proxy_suite/
CATEGORIES=    	net security

MASTER_SITES= 	http://ftp.suse.com/pub/projects/proxy-suite/src/ \
		ftp://ftp.suse.com/pub/projects/proxy-suite/src/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/proxy-suite
	${INSTALL_DATA} ${WRKSRC}/ftp-proxy/ftp-proxy.conf.sample \
	    ${PREFIX}/share/proxy-suite

.include <bsd.port.mk>
