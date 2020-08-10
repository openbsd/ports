# $OpenBSD: Makefile,v 1.19 2020/08/10 18:20:21 millert Exp $

COMMENT=	ex/vi text editor with wide character support

V =		2.2.0
GH_ACCOUNT =	lichray
GH_PROJECT =	nvi2
GH_TAGNAME =	v$V
DISTNAME =	nvi-$V

CATEGORIES =	editors

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses util

MODULES=	devel/cmake

FLAVORS=	iconv
FLAVOR?=

.if ${FLAVOR:Miconv}
LIB_DEPENDS+=	converters/libiconv
WANTLIB+=	iconv
.else
CONFIGURE_ARGS=	-DUSE_ICONV:Bool=False
.endif

post-patch:
	perl -pi.bak \
	    -e 's:/usr/share/vi/catalog/:${PREFIX}/share/vi/catalog/:' \
	    ${WRKSRC}/files/pathnames.h.in

post-build:
	cd ${WRKDIST}/catalog && ${MAKE_PROGRAM}

CATALOGS=	dutch english french german polish ru_RU.KOI8-R spanish \
		swedish uk_UA.KOI8-U zh_CN.GB2312

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/nvi ${PREFIX}/bin
	cd ${PREFIX}/bin; ln nvi nex; ln nvi nview
	${INSTALL_MAN} ${WRKDIST}/man/vi.1 ${PREFIX}/man/man1/nvi.1
	cd ${PREFIX}/man/man1; ln nvi.1 nex.1; ln nvi.1 nview.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/vi/catalog
	cd ${WRKDIST}/catalog; \
	    ${INSTALL_DATA} ${CATALOGS} ${PREFIX}/share/vi/catalog

.include <bsd.port.mk>
