# $OpenBSD: Makefile,v 1.48 2013/03/11 11:35:57 espie Exp $

COMMENT=	validating DNS resolver

DISTNAME=	unbound-1.4.19
REVISION=	0
CATEGORIES=	net

MASTER_SITES=	http://www.unbound.net/downloads/
HOMEPAGE=	http://www.unbound.net/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
NO_TEST=		Yes

SHARED_LIBS+=		unbound 3.3

WANTLIB=		c crypto event expat ldns>=6.0 ssl
LIB_DEPENDS+=		net/ldns/libldns>=1.6.16

CONFIGURE_ENV=		CFLAGS="${CFLAGS}"
CONFIGURE_ARGS+=	--enable-allsymbols \
			--with-ssl=/usr \
			--with-libevent=/usr \
			--with-libexpat=/usr \
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
