# $OpenBSD: Makefile,v 1.22 2003/04/06 03:44:11 pvalchev Exp $

COMMENT=	"extremely fast password cracker"

DISTNAME=	john-1.6
PKGNAME=	${DISTNAME}p1
CATEGORIES=     security
MASTER_SITES=	http://www.openwall.com/john/

HOMEPAGE=	http://www.openwall.com/john/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/src

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

do-configure:
	@cd ${WRKDIST} && \
	sed -e 's,@JOHN_HOME@,${PREFIX}/share/john,' < params.h > \
		params.h.new && mv -f params.h.new params.h

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
