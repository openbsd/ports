# $OpenBSD: Makefile,v 1.18 2000/04/18 09:48:01 turan Exp $
# $FreeBSD: Makefile,v 1.3 1997/07/17 15:12:58 max Exp $

PKGNAME=	rsaref-2.0
DISTNAME=	rsaref20.1996
CATEGORIES=	security
NEED_VERSION=	1.234
MASTER_SITES=	ftp://ftp.zedz.net/pub/crypto/crypto/LIBS/rsa/ \
		http://the.wiretapped.net/security/cryptography/libs/rsa/ \
		ftp://utopia.hacktic.nl/pub/replay/pub/crypto/LIBS/rsa/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	niklas@openbsd.org

# rsaref may not leave the US or Canada.
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

WRKDIST=	${WRKDIR}/source

pre-configure:
	@cp ${FILESDIR}/Makefile ${WRKSRC}
	@cp ${FILESDIR}/shlib_version ${WRKSRC}
	@cd ${WRKSRC} && \
		cp des.h _des.h && \
		cp md2.h _md2.h && \
		cp md5.h _md5.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rsaref
	cd ${WRKSRC} && ${INSTALL_DATA} rsa.h _des.h _md2.h _md5.h \
	    rsaref.h global.h ${PREFIX}/include
	cd ${WRKDIR}/doc && ${INSTALL_DATA} info.txt rsaref.txt \
	    ${PREFIX}/share/doc/rsaref
	${INSTALL_DATA} ${WRKSRC}/librsaref.a ${PREFIX}/lib
	@if [ -f ${WRKSRC}/librsaref.so.2.0 ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/librsaref.so.2.0 ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>
