# $OpenBSD: Makefile,v 1.35 2020/07/03 07:35:41 bket Exp $

PORTROACH=	limit:^2\.16

COMMENT=	SSL library with an intuitive API and readable source code

GH_ACCOUNT=	ARMmbed
GH_PROJECT=	mbedtls
GH_TAGNAME=	mbedtls-2.16.7
DISTNAME=	${GH_TAGNAME}

# check SOVERSION
SHARED_LIBS +=  mbedtls                   6.1 # 12
SHARED_LIBS +=  mbedcrypto                4.4 # 3
SHARED_LIBS +=  mbedx509                  3.1 # 0

CATEGORIES=	security

HOMEPAGE=	https://tls.mbed.org/

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# Dual licensed: GPLv2+/Commercial, Apache v2 is also available
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No

CONFIGURE_ARGS=		-DUSE_SHARED_MBEDTLS_LIBRARY=ON \
			-DLINK_WITH_PTHREAD=ON

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mbedtls
	cd ${WRKSRC}; ${INSTALL_DATA} README.md ChangeLog \
	    ${PREFIX}/share/doc/mbedtls
	mv ${PREFIX}/bin ${PREFIX}/share/examples/mbedtls
	(echo "These programs are useful code samples for a crypto expert, but";\
	echo "should not be relied upon by the normal end-user.") \
	> ${PREFIX}/share/examples/mbedtls/README

.include <bsd.port.mk>
