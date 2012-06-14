# $OpenBSD: Makefile,v 1.6 2012/06/14 07:30:09 sthen Exp $

COMMENT=	Yubikey OTP library

DISTNAME=	libyubikey-1.9
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

CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
