# $OpenBSD: Makefile,v 1.28 2011/03/24 20:30:42 jakob Exp $

COMMENT=	validating DNS resolver

DISTNAME=	unbound-1.4.9
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

SHARED_LIBS+=		unbound 2.8

WANTLIB=		c crypto event expat ldns>=4.7 ssl
LIB_DEPENDS+=		net/ldns/libldns>=1.6.9

CONFIGURE_ARGS+=	--with-ssl=/usr \
			--with-libevent=/usr \
			--with-libexpat=/usr \
			--with-ldns=${LOCALBASE} \
			--without-pthreads \
			--with-chroot-dir=/var/unbound \
			--with-pidfile=/var/unbound/var/run/unbound.pid \
			--with-conf-file=/var/unbound/etc/unbound.conf \
			--with-username=_unbound
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/unbound
	${INSTALL_DATA} ${WRKINST}/var/unbound/etc/unbound.conf ${PREFIX}/share/examples/unbound

.include <bsd.port.mk>
