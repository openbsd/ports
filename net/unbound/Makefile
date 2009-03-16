# $OpenBSD: Makefile,v 1.11 2009/03/16 09:56:15 sthen Exp $

COMMENT=	validating DNS resolver

DISTNAME=	unbound-1.2.1
PKGNAME=	${DISTNAME}p0
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

SHARED_LIBS+=		unbound 1.0

WANTLIB=		c crypto event ssl
LIB_DEPENDS+=		ldns.>=2.2:libldns->=1.5.1:net/ldns/libldns

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
