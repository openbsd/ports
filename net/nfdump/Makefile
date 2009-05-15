# $OpenBSD: Makefile,v 1.2 2009/05/15 06:56:05 sthen Exp $

COMMENT-main =		tools to collect and process netflow data
COMMENT-nfprofile =	filters data from nfdump according to profiles

DISTNAME =		nfdump-1.5.8
FULLPKGNAME-main =	${DISTNAME}
FULLPKGNAME-nfprofile =	${DISTNAME:S/nfdump/nfprofile/}

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

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-nfprofile \
			--with-rrdpath=${PREFIX} \
			--enable-ftconv \
			--with-ftpath=${WRKDIR}/flow-tools \
			--enable-sflow

MULTI_PACKAGES =	-main -nfprofile

LIB_DEPENDS-nfprofile =	rrd:rrdtool-*:net/rrdtool
RUN_DEPENDS-nfprofile =	:nfdump-*:net/nfdump,-main

BUILD_DEPENDS +=	::net/flow-tools:build

post-extract:
	@ln -sf ${WRKDIR}/net/flow-tools/flow-tools-* ${WRKDIR}/flow-tools

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nfdump
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nfdump
	@head -119 ${WRKSRC}/sflow.c > ${PREFIX}/share/doc/nfdump/COPYRIGHT

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
REGRESS_TARGET =	test
REGRESS_FLAGS =		TZ=CET

.include <bsd.port.mk>
