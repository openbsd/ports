# $OpenBSD: Makefile,v 1.21 2010/06/19 21:26:07 jakob Exp $

COMMENT=	validating DNS resolver

DISTNAME=	unbound-1.4.5
CATEGORIES=	net

MASTER_SITES=	http://www.unbound.net/downloads/
HOMEPAGE=	http://www.unbound.net/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

SHARED_LIBS+=		unbound 2.4

WANTLIB=		c crypto event ssl
LIB_DEPENDS+=		ldns.>=4.4:libldns->=1.6.5:net/ldns/libldns

CONFIGURE_ARGS+=	--with-ssl=/usr \
			--with-libevent=/usr \
			--with-ldns=${LOCALBASE} \
			--without-pthreads \
			--with-chroot-dir=/var/unbound \
			--with-pidfile=/var/unbound/var/run/unbound.pid \
			--with-conf-file=/var/unbound/etc/unbound.conf \
			--with-username=_unbound

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/unbound
	${INSTALL_DATA} ${WRKINST}/var/unbound/etc/unbound.conf ${PREFIX}/share/examples/unbound

.include <bsd.port.mk>
