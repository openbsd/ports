# $OpenBSD: Makefile,v 1.16 2019/07/12 20:49:00 sthen Exp $

COMMENT=		wireless auditing suite

DISTNAME=		bsd-airtools-v0.2
PKGNAME=		bsd-airtools-0.2
REVISION =		7
CATEGORIES=    		security net
EXTRACT_SUFX=           .tgz

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c crypto curses pcap

MASTER_SITES=		https://spacehopper.org/mirrors/

WRKDIST=		${WRKDIR}/bsd-airtools

HEADERFIX_FILES=	dstumbler/dstumbler.h dweputils/dwepcrack/dwepcrack.h \
			dweputils/dwepdump/dwepdump.c prism2ctl/prism2ctl.c

post-extract:
.for i in ${HEADERFIX_FILES}
	@perl -pi -e 's#\<bat\/common\.h\>#\<dev\/ic\/if_wi_ieee\.h\>#' \
	${WRKDIST}/$i
.endfor

MAKE_FLAGS=             CC="${CC}" CFLAGS="${CFLAGS}"

do-configure:
	cd ${WRKDIST}/dstumbler; env ${MAKE_FLAGS} ./configure

BUILD_DIRS=		dstumbler dweputils/dwepdump prism2ctl prism2dump \
			dweputils/dwepcrack dweputils/dwepkeygen

do-build:
.for i in ${BUILD_DIRS}
	cd ${WRKDIST}/$i; make ${MAKE_FLAGS}
.endfor

NO_TEST=		Yes

DOCS=			${PREFIX}/share/doc/bsd-airtools

BINARIES=		dstumbler/dstumbler dweputils/dwepdump/dwepdump \
			prism2ctl/prism2ctl prism2dump/prism2dump \
			dweputils/dwepcrack/dwepcrack \
			dweputils/dwepkeygen/dwepkeygen

do-install:
.for i in ${BINARIES}
	${INSTALL_PROGRAM} -m 755 ${WRKDIST}/$i ${PREFIX}/sbin
.endfor
	${INSTALL_DATA_DIR} ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/dstumbler/README ${DOCS}/README.dstumbler
	${INSTALL_DATA} ${WRKSRC}/dstumbler/OVERVIEW ${DOCS}/OVERVIEW.dstumbler
	${INSTALL_DATA} ${WRKSRC}/dweputils/dwepcrack/README \
				${DOCS}/README.dwepcrack
	${INSTALL_DATA} ${WRKSRC}/dweputils/dwepdump/README \
				${DOCS}/README.dwepdump
	${INSTALL_DATA} ${WRKSRC}/dweputils/dwepkeygen/README \
				${DOCS}/README.dwepkeygen
	${INSTALL_DATA} ${WRKSRC}/prism2ctl/README \
				${DOCS}/README.prism2ctl
	${INSTALL_DATA} ${WRKSRC}/prism2dump/README \
				${DOCS}/README.prism2dump

.include <bsd.port.mk>
