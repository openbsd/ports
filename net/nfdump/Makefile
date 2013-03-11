# $OpenBSD: Makefile,v 1.14 2013/03/11 11:35:50 espie Exp $

COMMENT-main =		tools to collect and process netflow data
COMMENT-nfprofile =	filters data from nfdump according to profiles

V =			${DISTNAME:S/nfdump-//:S/p/./}
REVISION=		0
DISTNAME =		nfdump-1.6.3p1
NFSEN =			nfsen-1.3.5
FULLPKGNAME-main =	nfdump-$V
FULLPKGNAME-nfprofile =	nfprofile-$V

# we want a contrib file from the nfsen distfile to build nftrack,
# however because nfdump/nfprofile are build dependencies of nfsen,
# we can't use "BUILD_DEPENDS=net/nfsen:patch" here.
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			${NFSEN}${EXTRACT_SUFX}:0

CATEGORIES =		net
HOMEPAGE =		http://nfdump.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nfdump/}
MASTER_SITES0 =		${MASTER_SITE_SOURCEFORGE:=nfsen/}

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--enable-nfprofile \
			--with-rrdpath=${LOCALBASE} \
			--enable-ftconv \
			--with-ftpath=${LOCALBASE} \
			--enable-sflow \
			--enable-compat15

MULTI_PACKAGES =	-main -nfprofile

LIB_DEPENDS-main =	net/flow-tools>=0.68.5
WANTLIB-main =		${WANTLIB} ft
LIB_DEPENDS-nfprofile =	net/rrdtool
WANTLIB-nfprofile =	${WANTLIB} rrd
RUN_DEPENDS-nfprofile =	nfdump-$V:net/nfdump,-main

post-build:
	perl -pi -e 's,/usr/local,${LOCALBASE},g;' \
	    -e 's,/usr/X11R6,${X11BASE},g;' \
	    -e 's,^CC=.*,CC="${CC} -c ${CFLAGS}",;' \
	    -e 's,^gcc -o,${CC} -o,;' \
	    -e 's,/path/to/nfdump.*",../../../${DISTNAME}",g;' \
	    ${WRKSRC}/../${NFSEN}/contrib/PortTracker/do_compile
	cd ${WRKSRC}/../${NFSEN}/contrib/PortTracker; \
	    ./do_compile

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/../${NFSEN}/contrib/PortTracker/nftrack \
	    ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nfdump
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nfdump
	head -119 ${WRKSRC}/bin/sflow.c > ${PREFIX}/share/doc/nfdump/COPYRIGHT

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
TEST_FLAGS =		TZ=CET

.include <bsd.port.mk>
