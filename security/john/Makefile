# $OpenBSD: Makefile,v 1.21 2002/10/28 17:35:01 naddy Exp $

COMMENT=	"extremely fast password cracker"

DISTNAME=	john-1.6
PKGNAME=	${DISTNAME}p1
CATEGORIES=     security

MASTER_SITES=	http://www.openwall.com/john/ \
		http://www.false.com/security/john/ \
		ftp://ftp.false.com/pub/security/john/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" LD="${CC}" \
		CFLAGS="-c -Wall ${CFLAGS} -fomit-frame-pointer"

FLAVORS=	k6
FLAVOR?=

.if ${FLAVOR:L} == "k6"
ONLY_FOR_ARCHS=	i386
.endif

.if ${MACHINE_ARCH} == "i386"
.  if ${FLAVOR:L} == "k6"
ALL_TARGET=	openbsd-x86-k6
.  else
ALL_TARGET=	openbsd-x86-any
.  endif
.elif ${MACHINE_ARCH} == "alpha"
ALL_TARGET=	linux-alpha
.else
ALL_TARGET=	generic
.endif

WRKDIST=	${WRKDIR}/${DISTNAME}/src

do-configure:
	@cd ${WRKDIST} && \
	sed -e 's,@JOHN_HOME@,${PREFIX}/share/john,' < params.h > \
		params.h.new && mv -f params.h.new params.h

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/john
	${INSTALL_PROGRAM} ${WRKBUILD}/../run/john ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/../run/mailer ${PREFIX}/bin
	@cd ${PREFIX}/bin && ln -sf john unshadow && \
		ln -sf john unafs && \
		ln -sf john unique
	${INSTALL_DATA} ${WRKSRC}/../run/* ${PREFIX}/share/john
	@sed -e s#~/#${TRUEPREFIX}/share/john/#g ${WRKSRC}/../run/john.ini > \
		${PREFIX}/share/john/john.ini
	${INSTALL_DATA} ${WRKSRC}/../doc/* ${PREFIX}/share/doc/john

.include <bsd.port.mk>
