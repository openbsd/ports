# $OpenBSD: Makefile,v 1.2 2014/04/18 20:51:48 sthen Exp $

BROKEN-sparc64=	problems with mpi_mul_hlp() (also tested with gcc4.8)

COMMENT=	SSL library with an intuitive API and readable source code

DISTNAME=	polarssl-1.3.6
REVISION=	0
EXTRACT_SUFX=	-gpl.tgz

SHARED_LIBS +=	polarssl                  0.0 # 1.3

CATEGORIES=	security

HOMEPAGE=	https://polarssl.org/

# Dual licensed: GPLv2+/Commercial
PERMIT_PACKAGE_CDROM=	Yes

# libssl/libcrypto are used for polarssl_o_p_test only
WANTLIB += c crypto pthread ssl

MASTER_SITES=	https://polarssl.org/download/

MODULES=	devel/cmake

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} != "yes"
CONFIGURE_ARGS=	-DUSE_SHARED_POLARSSL_LIBRARY=ON
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/polarssl
	cd ${WRKSRC}; ${INSTALL_DATA} README.rst ChangeLog \
	    ${PREFIX}/share/doc/polarssl
	mv ${PREFIX}/bin ${PREFIX}/share/examples/polarssl
	(echo "These programs are useful code samples for a crypto expert, but";\
	echo "should not be relied upon by the normal end-user.") \
	> ${PREFIX}/share/examples/polarssl/README

.include <bsd.port.mk>
