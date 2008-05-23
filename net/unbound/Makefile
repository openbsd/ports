# $OpenBSD: Makefile,v 1.1.1.1 2008/05/23 06:52:21 jakob Exp $

COMMENT=	validating DNS resolver

DISTNAME=	unbound-1.0.0

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

SHARED_LIBS+=		unbound 0.0

WANTLIB=		c crypto event
BUILD_DEPENDS+=		::devel/doxygen

CONFIGURE_ARGS+=	--with-ssl=/usr \
			--with-libevent=/usr \
			--without-pthreads \
			--with-conf-file=/var/unbound/etc/unbound.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/unbound
	${INSTALL_DATA} ${WRKINST}/var/unbound/etc/unbound.conf ${PREFIX}/share/examples/unbound

.include <bsd.port.mk>
