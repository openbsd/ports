# OpenBSD makefile for:	john
# Version required:	1.5
# Date created:		1999-Apr-7
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/05/31 16:12:22 dugsong Exp $

DISTNAME=	john-1.6
CATEGORIES=     security

MAINTAINER=	dugsong@monkey.org

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"Crypto; export-controlled"

MASTER_SITES=	http://www.false.com/security/john/ \
		ftp://ftp.false.com/pub/security/john/

WRKSRC=		${WRKDIR}/${DISTNAME}/src

NO_CONFIGURE=	yes

.if (${MACHINE_ARCH} == "i386")
PTYPE!=		uname -p | cut -f2 -d' '
.if (${PTYPE} == "K6")
ALL_TARGET=	openbsd-x86-k6
#.elif (${PTYPE} == "Pentium/MMX")
#ALL_TARGET=	openbsd-x86-mmx
.else
ALL_TARGET=	openbsd-x86-any
.endif
.elif (${MACHINE_ARCH} == "sparc")
ALL_TARGET=	linux-sparc
.elif (${MACHINE_ARCH} == "alpha")
ALL_TARGET=	linux-alpha
.else
ALL_TARGET=	generic
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/../run/john ${PREFIX}/bin
	${LN} -sf ${PREFIX}/bin/john ${PREFIX}/bin/unshadow
	${LN} -sf ${PREFIX}/bin/john ${PREFIX}/bin/unafs
	${LN} -sf ${PREFIX}/bin/john ${PREFIX}/bin/unique
	${SED} "s%~/%${PREFIX}/lib/john/%g" ${WRKSRC}/../run/john.ini > \
	${PREFIX}/etc/john.ini
	${RM} -f ${WRKSRC}/../run/john* ${WRKSRC}/../run/un*
	${INSTALL_DATA_DIR} ${PREFIX}/lib/john
	${INSTALL_DATA} ${WRKSRC}/../run/* ${PREFIX}/lib/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/john
	${INSTALL_DATA} ${WRKSRC}/../doc/* ${PREFIX}/share/doc/john

.include <bsd.port.mk>
