# $OpenBSD: Makefile,v 1.6 1999/03/02 04:41:09 marc Exp $
# $FreeBSD: Makefile,v 1.3 1997/07/17 15:12:58 max Exp $
#

PKGNAME=        rsaref-2.0
DISTNAME=       rsaref20.1996
CATEGORIES=     security

NEED_VERSION=	1.64
NO_CDROM=	"CRYPTO: Third party crypto not allowed."

MASTER_SITES=   ftp://utopia.hacktic.nl/pub/replay/pub/crypto/LIBS/rsa/
EXTRACT_SUFX=   .tar.Z

MAINTAINER=	niklas@openbsd.org

WRKSRC=         ${WRKDIR}/source
RESTRICTED=     "Crypto"

pre-configure:
	cp ${FILESDIR}/Makefile ${WRKSRC}
	cd ${WRKSRC} && \
		cp des.h _des.h && \
		cp md2.h _md2.h && \
		cp md5.h _md5.h

do-install:
	cd ${WRKSRC} && \
		${INSTALL_DATA} rsa.h _des.h _md2.h _md5.h rsaref.h global.h \
			${PREFIX}/include
	cd ${WRKSRC} && ${INSTALL_DATA} librsaref.a ${PREFIX}/lib
	install -d -m 555 ${PREFIX}/share/doc/rsaref
	cd ${WRKDIR}/doc && \
		${INSTALL_DATA} info.txt rsaref.txt \
			${PREFIX}/share/doc/rsaref

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
post-install:
	cd ${WRKSRC} && ${INSTALL_DATA} librsaref.so.2.0 ${PREFIX}/lib
	${LDCONFIG} -m ${PREFIX}/lib
.endif
