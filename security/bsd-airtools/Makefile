# $OpenBSD: Makefile,v 1.8 2009/02/18 14:06:45 sthen Exp $

COMMENT=		wireless auditing suite

DISTNAME=		bsd-airtools-v0.2
PKGNAME=		bsd-airtools-0.2p3
CATEGORIES=    		security net
EXTRACT_SUFX=           .tgz

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto curses pcap

MASTER_SITES=		http://spacehopper.org/mirrors/

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

NO_REGRESS=		Yes

DOCS=			${PREFIX}/share/doc/bsd-airtools

INSTALL_700=		dstumbler/dstumbler dweputils/dwepdump/dwepdump \
			prism2ctl/prism2ctl prism2dump/prism2dump

INSTALL_755=		dweputils/dwepcrack/dwepcrack \
			dweputils/dwepkeygen/dwepkeygen

do-install:
.for i in ${INSTALL_700}
	${INSTALL_PROGRAM} -m 700 ${WRKDIST}/$i ${PREFIX}/sbin
.endfor
.for i in ${INSTALL_755}
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
