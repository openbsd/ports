# $OpenBSD: Makefile,v 1.21 2010/10/18 18:36:59 espie Exp $
# $NetBSD: Makefile,v 1.3 2000/01/21 10:01:23 itojun Exp $

COMMENT=	DNS proxy that supports IPv6 <==> IPv4 record translation

DISTNAME=	totd-1.5.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.pasta.cs.uit.no/pub/Vermicelli/

HOMEPAGE=	http://www.vermicelli.pasta.cs.uit.no/software/totd.html

# BSD/ISC (built-in webserver is LGPL but we don't compile it in)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS += 	--enable-stf

USE_GROFF =	Yes
NO_REGRESS=		Yes

MAKE_FLAGS=		CC="${CC}" SYSCONFDIR="${SYSCONFDIR}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/totd
	${INSTALL_DATA} ${FILESDIR}/totd.conf.sample ${PREFIX}/share/totd

.include <bsd.port.mk>
