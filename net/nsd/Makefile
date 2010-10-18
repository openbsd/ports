# $OpenBSD: Makefile,v 1.57 2010/10/18 18:36:50 espie Exp $

COMES_WITH=	4.9
COMMENT=	authoritative-only name server daemon

VERSION=	3.2.6
DISTNAME=	nsd-${VERSION}
CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/nsd/
HOMEPAGE=	http://www.nlnetlabs.nl/projects/nsd/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-bind8-stats \
			--with-ssl=/usr \
			--with-user=named \
			--with-pidfile=/var/nsd/nsd.pid \
			--with-zonesdir=/var/nsd/zones \
			--with-dbfile=/var/nsd/nsd.db \
			--with-difffile=/var/nsd/ixfr.db \
			--with-xfrdfile=/var/nsd/xfrd.state

USE_GROFF =	Yes
NO_REGRESS=	Yes

DOCS=		README NSD-FOR-BIND-USERS

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nsd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nsd
	cd ${WRKSRC}/doc; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/nsd
	mv ${WRKINST}/${SYSCONFDIR}/nsd/nsd.conf.sample ${PREFIX}/share/examples/nsd/nsd.conf

.include <bsd.port.mk>
