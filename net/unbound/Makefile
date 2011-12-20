# $OpenBSD: Makefile,v 1.34 2011/12/20 10:49:19 sthen Exp $

COMMENT=	validating DNS resolver

DISTNAME=	unbound-1.4.14
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
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68
USE_LIBTOOL=		Yes
NO_REGRESS=		Yes

SHARED_LIBS+=		unbound 3.0

WANTLIB=		c crypto event expat ldns>=4.9 ssl
LIB_DEPENDS+=		net/ldns/libldns>=1.6.11

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
