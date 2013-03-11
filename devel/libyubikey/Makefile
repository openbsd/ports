# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:11 espie Exp $

COMMENT=	Yubikey OTP library

DISTNAME=	libyubikey-1.9
SHARED_LIBS +=  yubikey              0.0      # 1.3
CATEGORIES=	devel security

HOMEPAGE=	http://yubico-c.googlecode.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

WANTLIB += c

CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
