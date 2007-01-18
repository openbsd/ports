# $OpenBSD: Makefile,v 1.37 2007/01/18 22:37:28 jakob Exp $

COMMENT=	"authoritative-only name server daemon"

VERSION=	3.0.4
DISTNAME=	nsd-${VERSION}
PKGNAME=	nsd-${VERSION}
CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/nsd/

HOMEPAGE=	http://www.nlnetlabs.nl/nsd/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto

# gcc 3.3.5, Bus errors
.if ${MACHINE_ARCH} == "sparc64"
CFLAGS=	-O0
.endif

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nsd
	mv ${WRKINST}/${SYSCONFDIR}/nsd/nsd.conf.sample ${PREFIX}/share/examples/nsd/nsd.conf

.include <bsd.port.mk>
