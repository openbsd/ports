# $OpenBSD: Makefile,v 1.30 2019/07/12 20:48:50 sthen Exp $

COMMENT=	DNS proxy that supports IPv6 <==> IPv4 record translation

DISTNAME=	totd-1.5.1
REVISION=	4
CATEGORIES=	net
MASTER_SITES=	http://www.dillema.net/software/totd/

HOMEPAGE=	http://www.dillema.net/software/totd.html

# BSD/ISC (built-in webserver is LGPL but we don't compile it in)
PERMIT_PACKAGE=	Yes

WANTLIB=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS +=	--enable-stf

NO_TEST=		Yes

MAKE_FLAGS=		CC="${CC}" SYSCONFDIR="${SYSCONFDIR}" INSTALL=install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/totd
	${INSTALL_DATA} ${FILESDIR}/totd.conf.sample ${PREFIX}/share/totd

.include <bsd.port.mk>
