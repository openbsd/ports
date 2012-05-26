# $OpenBSD: Makefile,v 1.24 2012/05/26 12:40:30 matthieu Exp $

COMMENT=	DNS proxy that supports IPv6 <==> IPv4 record translation

DISTNAME=	totd-1.5.1
REVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://www.dillema.net/software/totd/

HOMEPAGE=	http://www.dillema.net/software/totd.html

# BSD/ISC (built-in webserver is LGPL but we don't compile it in)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c 

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS += 	--enable-stf

NO_REGRESS=		Yes

MAKE_FLAGS=		CC="${CC}" SYSCONFDIR="${SYSCONFDIR}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/totd
	${INSTALL_DATA} ${FILESDIR}/totd.conf.sample ${PREFIX}/share/totd

.include <bsd.port.mk>
