# $OpenBSD: Makefile,v 1.17 2014/03/23 01:43:41 sthen Exp $

COMMENT-main =		tools to collect and process netflow data
COMMENT-nfprofile =	filters data from nfdump according to profiles

V =			1.6.11
DISTNAME =		nfdump-$V
FULLPKGNAME-main =	nfdump-$V
FULLPKGNAME-nfprofile =	nfprofile-$V

CATEGORIES =		net
HOMEPAGE =		http://nfdump.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nfdump/}

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--enable-compat15 \
			--enable-ftconv \
			--enable-nfprofile \
			--enable-nftrack \
			--enable-nsel \
			--enable-sflow \
			--with-rrdpath=${LOCALBASE} \
			--with-ftpath=${LOCALBASE}

MULTI_PACKAGES =	-main -nfprofile

LIB_DEPENDS-main =	net/flow-tools>=0.68.5
WANTLIB-main =		${WANTLIB} ft
LIB_DEPENDS-nfprofile =	net/rrdtool
WANTLIB-nfprofile =	${WANTLIB} rrd
RUN_DEPENDS-nfprofile =	nfdump-$V:net/nfdump,-main

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nfdump
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nfdump
	head -119 ${WRKSRC}/bin/sflow.c > ${PREFIX}/share/doc/nfdump/COPYRIGHT

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
TEST_FLAGS =		TZ=CET

.include <bsd.port.mk>
