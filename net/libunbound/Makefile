# $OpenBSD: Makefile,v 1.12 2020/07/11 22:54:37 sthen Exp $

COMMENT=	validating DNS resolver library

DISTNAME=	unbound-1.10.1
PKGNAME=	lib${DISTNAME}
REVISION=	0

SHARED_LIBS +=  unbound              4.1      # 9.3

CATEGORIES=	net

HOMEPAGE=	https://www.unbound.net/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += crypto event pthread ssl

MASTER_SITES=	https://www.unbound.net/downloads/

SEPARATE_BUILD=	 Yes
CONFIGURE_STYLE= gnu
DEBUG_PACKAGES=	${BUILD_PACKAGES}

# in sync with src/usr.sbin/unbound, apart from --enable-allsymbols
CONFIGURE_ARGS+= \
		--enable-shared \
		--enable-static \
		--with-ssl=/usr \
		--with-libevent=/usr \
		--with-libexpat=/usr \
		--with-pthreads \
		--without-pythonmodule \
		--with-chroot-dir=/var/unbound \
		--with-pidfile="" \
		--with-rootkey-file=/var/unbound/db/root.key \
		--with-conf-file=/var/unbound/etc/unbound.conf \
		--with-username=_unbound

ALL_TARGET=	lib
INSTALL_TARGET=	install-lib

post-install:
	${INSTALL_DATA} ${WRKBUILD}/contrib/libunbound.pc ${PREFIX}/lib/pkgconfig/

.include <bsd.port.mk>
