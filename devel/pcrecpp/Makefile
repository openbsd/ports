# $OpenBSD: Makefile,v 1.1.1.1 2011/09/18 20:14:58 jasper Exp $

COMMENT=	perl-compatible regular expression C++ library

DISTNAME=	pcre-8.13
PKGNAME=	${DISTNAME:S/-/cpp-/}

SHARED_LIBS +=  pcrecpp              3.4      # 0.0

CATEGORIES=	devel

MASTER_SITES=	ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ \
		${MASTER_SITE_SOURCEFORGE:=pcre/}

HOMEPAGE=	http://www.pcre.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		stdc++

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-utf8 \
			--enable-unicode-properties

# XXX compiler bugs
.if ${MACHINE_ARCH} == "vax"
CFLAGS+=	-O0
.endif

HEADERS=		pcrecpparg.h pcre_stringpiece.h pcrecpp.h pcre_scanner.h

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pcre-config ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/pcre{grep,test} ${PREFIX}/bin/
.for h in ${HEADERS}
	${INSTALL_DATA} ${WRKSRC}/$h ${PREFIX}/include/
.endfor
	${INSTALL_PROGRAM} ${WRKSRC}/.libs/libpcrecpp.so.* ${PREFIX}/lib/
	${INSTALL_PROGRAM} ${WRKSRC}/.libs/libpcrecpp.{l,}a ${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig/ ${PREFIX}/share/doc/pcrecpp/
	${INSTALL_DATA} ${WRKSRC}/libpcrecpp.pc ${PREFIX}/lib/pkgconfig/
	${INSTALL_MAN} ${WRKSRC}/doc/*.3 ${PREFIX}/man/man3/
	cd ${WRKSRC}/doc/ && umask 022 && pax -rw html *.txt \
		${PREFIX}/share/doc/pcrecpp/

.include <bsd.port.mk>
