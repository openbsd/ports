# $OpenBSD: Makefile,v 1.12 2000/10/22 14:03:44 espie Exp $

DISTNAME=	john-1.6
CATEGORIES=     security
NEED_VERSION=	1.320
MASTER_SITES=	http://www.openwall.com/john/ \
		http://www.false.com/security/john/ \
		ftp://ftp.false.com/pub/security/john/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" LD="${CC}" \
		CFLAGS="-c -Wall ${CFLAGS} -fomit-frame-pointer \
			-DJOHN_HOME=\\\"${PREFIX}/share/john\\\""

.if (${MACHINE_ARCH} == "i386")
PTYPE!=		uname -p | cut -f2 -d' '
.if (${PTYPE} == "K6")
ALL_TARGET=	openbsd-x86-k6
.else
ALL_TARGET=	openbsd-x86-any
.endif
.elif (${MACHINE_ARCH} == "alpha")
ALL_TARGET=	linux-alpha
.else
ALL_TARGET=	generic
.endif

WRKDIST=	${WRKDIR}/${DISTNAME}/src

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/john
	${INSTALL_PROGRAM} ${WRKBUILD}/../run/john ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/../run/mailer ${PREFIX}/bin
	@cd ${PREFIX}/bin && ln -sf john unshadow && \
		ln -sf john unafs && \
		ln -sf john unique
	${INSTALL_DATA} ${WRKSRC}/../run/* ${PREFIX}/share/john
	@sed -e s#~/#${PREFIX}/share/john/#g ${WRKSRC}/../run/john.ini > \
		${PREFIX}/share/john/john.ini
	${INSTALL_DATA} ${WRKSRC}/../doc/* ${PREFIX}/share/doc/john

.include <bsd.port.mk>
