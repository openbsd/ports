# $OpenBSD: Makefile,v 1.9 1999/11/24 03:01:08 brad Exp $
# $FreeBSD: Makefile,v 1.3 1997/07/17 15:12:58 max Exp $

PKGNAME=	rsaref-2.0
DISTNAME=	rsaref20.1996
CATEGORIES=	security
MASTER_SITES=	http://the.wiretapped.net/security/cryptography/libs/rsa/ \
		ftp://utopia.hacktic.nl/pub/replay/pub/crypto/LIBS/rsa/
EXTRACT_SUFX=	.tar.Z

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"Crypto"

NEED_VERSION=	1.64

MAINTAINER=	niklas@openbsd.org

WRKSRC=	${WRKDIR}/source

pre-configure:
	@cp ${FILESDIR}/Makefile ${WRKSRC}
	@cd ${WRKSRC} && \
		cp des.h _des.h && \
		cp md2.h _md2.h && \
		cp md5.h _md5.h

do-install:
	@cd ${WRKSRC} && \
		${INSTALL_DATA} rsa.h _des.h _md2.h _md5.h rsaref.h global.h \
			${PREFIX}/include
	@cd ${WRKSRC} && ${INSTALL_DATA} librsaref.a ${PREFIX}/lib
	@install -d -m 555 ${PREFIX}/share/doc/rsaref
	@cd ${WRKDIR}/doc && \
		${INSTALL_DATA} info.txt rsaref.txt \
			${PREFIX}/share/doc/rsaref

post-install:
	@if [ x"${NO_SHARED_LIBS}" = "x" ]; then \
		${INSTALL_DATA} ${WRKSRC}/librsaref.so.2.0 ${PREFIX}/lib; \
		${LDCONFIG} -m ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>
