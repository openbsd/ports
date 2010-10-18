# $OpenBSD: Makefile,v 1.9 2010/10/18 21:50:39 sthen Exp $

COMMENT-main =		tools to collect and process netflow data
COMMENT-nfprofile =	filters data from nfdump according to profiles

V =			1.5.8
DISTNAME =		nfdump-$V
NFSEN =			nfsen-1.3.2
FULLPKGNAME-main =	nfdump-$V
FULLPKGNAME-nfprofile =	nfprofile-$V
REVISION-main =		2
REVISION-nfprofile =	1

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			${NFSEN}${EXTRACT_SUFX}:0

CATEGORIES =		net
HOMEPAGE =		http://nfdump.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nfdump/}
MASTER_SITES0 =		${MASTER_SITE_SOURCEFORGE:=nfsen/}

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-nfprofile \
			--with-rrdpath=${LOCALBASE} \
			--enable-ftconv \
			--with-ftpath=${LOCALBASE} \
			--enable-sflow
USE_GROFF =	Yes

MULTI_PACKAGES =	-main -nfprofile

LIB_DEPENDS-main =	ft:flow-tools->=0.68.5:net/flow-tools
LIB_DEPENDS-nfprofile =	rrd:rrdtool-*:net/rrdtool
RUN_DEPENDS-nfprofile =	:nfdump-$V:net/nfdump,-main

post-build:
	perl -pi -e 's,/usr/local,${LOCALBASE},g;' \
	    -e 's,/usr/X11R6,${X11BASE},g;' \
	    ${WRKSRC}/../${NFSEN}/contrib/PortTracker/do_compile
	cd ${WRKSRC}/../${NFSEN}/contrib/PortTracker; \
	    ./do_compile

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/../${NFSEN}/contrib/PortTracker/nftrack \
	    ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nfdump
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nfdump
	head -119 ${WRKSRC}/sflow.c > ${PREFIX}/share/doc/nfdump/COPYRIGHT

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
REGRESS_TARGET =	test
REGRESS_FLAGS =		TZ=CET

.include <bsd.port.mk>
