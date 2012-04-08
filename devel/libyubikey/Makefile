# $OpenBSD: Makefile,v 1.4 2012/04/08 17:40:41 jasper Exp $

COMMENT=	Yubikey OTP library

DISTNAME=	libyubikey-1.8
REVISION=	1
SHARED_LIBS +=  yubikey              0.0      # 1.3
CATEGORIES=	devel security

HOMEPAGE=	http://yubico-c.googlecode.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

WANTLIB += c

AUTOMAKE_VERSION=	1.11
AUTOCONF_VERSION=	2.68

CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		Yes

pre-configure:
	cd ${WRKSRC} && ${SETENV} -i AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
				AUTOCONF_VERSION=${AUTOCONF_VERSION} \
				autoreconf-${AUTOCONF_VERSION} --install

.include <bsd.port.mk>
