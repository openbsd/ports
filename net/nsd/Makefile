# $OpenBSD: Makefile,v 1.50 2009/05/18 15:05:37 jakob Exp $

COMMENT=	authoritative-only name server daemon

VERSION=	3.2.2
DISTNAME=	nsd-${VERSION}
PKGNAME=	${DISTNAME}
CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/nsd/

HOMEPAGE=	http://www.nlnetlabs.nl/nsd/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-bind8-stats \
			--enable-nsid \
			--with-ssl=/usr \
			--with-user=named \
			--with-pidfile=/var/nsd/nsd.pid \
			--with-zonesdir=/var/nsd/zones \
			--with-dbfile=/var/nsd/nsd.db \
			--with-difffile=/var/nsd/ixfr.db \
			--with-xfrdfile=/var/nsd/xfrd.state

NO_REGRESS=	Yes

DOCS=		README NSD-FOR-BIND-USERS

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nsd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nsd
	cd ${WRKSRC}/doc; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/nsd
	mv ${WRKINST}/${SYSCONFDIR}/nsd/nsd.conf.sample ${PREFIX}/share/examples/nsd/nsd.conf

.include <bsd.port.mk>
