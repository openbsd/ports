# New ports collection makefile for: rsaref
# Version required:     2.0
#
# Date created:         2 December 1997
# Whom:                 niklas
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/02 14:24:36 niklas Exp $
# $FreeBSD: Makefile,v 1.3 1997/07/17 15:12:58 max Exp $
#

PKGNAME=        rsaref-2.0
DISTNAME=       rsaref20.1996
CATEGORIES=     security
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
.if (${MACHINE_ARCH} != "alpha")
	cd ${WRKSRC} && \
		${INSTALL_DATA} librsaref.a librsaref.so.2.0 \
			${PREFIX}/lib
.if (${MACHINE_ARCH} == "mips")
	${LDCONFIG} -n ${PREFIX}/lib
.else
	${LDCONFIG} -m ${PREFIX}/lib
.endif
.endif
	install -d -m 555 ${PREFIX}/share/doc/rsaref
	cd ${WRKDIR}/doc && \
		${INSTALL_DATA} info.txt rsaref.txt \
			${PREFIX}/share/doc/rsaref

.include <bsd.port.mk>
