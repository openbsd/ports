# $OpenBSD: Makefile,v 1.5 2010/05/12 14:35:28 sthen Exp $

COMMENT-main =		tools to collect and process netflow data
COMMENT-nfprofile =	filters data from nfdump according to profiles

V =			1.5.8
DISTNAME =		nfdump-$V
FULLPKGNAME-main =	nfdump-$Vp2
FULLPKGNAME-nfprofile =	nfprofile-$Vp0

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

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-nfprofile \
			--with-rrdpath=${LOCALBASE} \
			--enable-ftconv \
			--with-ftpath=${LOCALBASE} \
			--enable-sflow

MULTI_PACKAGES =	-main -nfprofile

LIB_DEPENDS-main =	ft:flow-tools->=0.68.5:net/flow-tools
LIB_DEPENDS-nfprofile =	rrd:rrdtool-*:net/rrdtool
RUN_DEPENDS-nfprofile =	:nfdump-$V:net/nfdump,-main

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nfdump
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nfdump
	@head -119 ${WRKSRC}/sflow.c > ${PREFIX}/share/doc/nfdump/COPYRIGHT

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
REGRESS_TARGET =	test
REGRESS_FLAGS =		TZ=CET

.include <bsd.port.mk>
